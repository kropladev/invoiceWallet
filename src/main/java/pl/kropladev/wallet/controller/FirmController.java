package pl.kropladev.wallet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.kropladev.wallet.model.Firm;
import pl.kropladev.wallet.service.BaseService;

import java.util.List;

/**
 * Created by kropla on 18.11.15.
 */

@Controller
@RequestMapping("/firm")
public class FirmController {

    @Autowired @Qualifier("firmService")
    BaseService<Firm> service;

    @Autowired
    MessageSource messageSource;

    @RequestMapping(value = { "","/","/list"},method = RequestMethod.GET)
    public String listFirms(ModelMap model){
        List<Firm> firms = service.findAllEntities();
        model.addAttribute("list", firms);
        return "allfirms";
    }


    @RequestMapping(value = { "/new" }, method = RequestMethod.GET)
    public String newFirm(ModelMap model) {
        Firm entity = new Firm();
        model.addAttribute("entity", entity);
        model.addAttribute("edit", false);
        return "registrationFirm";
    }

    @RequestMapping(value = { "/new" }, method = RequestMethod.POST)
    public String saveFirm( Firm entity, BindingResult result,
                               ModelMap model) {

        if (result.hasErrors()) {
            return "registrationFirm";
        }

        service.saveEntity(entity);

        model.addAttribute("success", "Firm " + entity.getName() + " registered successfully");
        model.addAttribute("pageType", "firm");
        return "success";
    }

    @RequestMapping(value = { "/edit-{entityId}" }, method = RequestMethod.GET)
    public String editFirm(@PathVariable Long entityId, ModelMap model) {
        Firm entity = service.findEntityById(entityId);
        model.addAttribute("entity", entity);
        model.addAttribute("edit", true);
        return "registrationFirm";
    }


    @RequestMapping(value = { "/edit-{entityId}" }, method = RequestMethod.POST)
    public String updateFirm(Firm entity, BindingResult result,
                                ModelMap model, @PathVariable  Long entityId) {

        if (result.hasErrors()) {
            return "registrationFirm";
        }

        service.updateEntity(entity);

        model.addAttribute("success", "Firm " + entity.getName()  + " updated successfully");
        model.addAttribute("pageType", "firm");
        return "success";
    }

    @RequestMapping(value = { "/delete-{entityId}" }, method = RequestMethod.GET)
    public String deleteFirm(@PathVariable  Long entityId) {
        service.deleteEntityById(entityId);
        return "redirect:/firm/list";
    }

}
