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
import pl.kropladev.wallet.model.Counter;
import pl.kropladev.wallet.service.BaseService;

import java.util.List;

/**
 * Created by kropla on 19.11.15.
 */

@Controller
@RequestMapping("/counter")
public class CounterController {

    private static final Object PAGE_TYPE = "counter";
    @Autowired
    @Qualifier("counterService")
    BaseService<Counter> service;

    @Autowired
    MessageSource messageSource;

    @RequestMapping(value = {"","/", "/list"}, method = RequestMethod.GET)
    public String listAll(ModelMap model) {
        List<Counter> dbEntities = service.findAllEntities();
        model.addAttribute("list", dbEntities);
        model.addAttribute("pageTitle", "all_"+PAGE_TYPE);
        return "all_"+PAGE_TYPE;
    }


    @RequestMapping(value = {"/new"}, method = RequestMethod.GET)
    public String newEntity(ModelMap model) {
        Counter entity = new Counter();
        model.addAttribute("entity", entity);
        model.addAttribute("edit", false);
        return "add_" + PAGE_TYPE;
    }

    @RequestMapping(value = {"/new"}, method = RequestMethod.POST)
    public String saveEntity(Counter entity, BindingResult result,
                             ModelMap model) {

        if (result.hasErrors()) {
            return "add_" + PAGE_TYPE;
        }

        service.saveEntity(entity);

        model.addAttribute("success", PAGE_TYPE + entity.getName() + " registered successfully");
        model.addAttribute("pageType", PAGE_TYPE);
        return "success";
    }

    @RequestMapping(value = {"/edit/{entityId}"}, method = RequestMethod.GET)
    public String editEntity(@PathVariable Long entityId, ModelMap model) {
        Counter entity = service.findEntityById(entityId);
        model.addAttribute("entity", entity);
        model.addAttribute("edit", true);
        return "add_" + PAGE_TYPE;
    }


    @RequestMapping(value = {"/edit/{entityId}"}, method = RequestMethod.POST)
    public String updateEntity(Counter entity, BindingResult result,
                               ModelMap model, @PathVariable Long entityId) {

        if (result.hasErrors()) {
            return "add_" + PAGE_TYPE;
        }

        service.updateEntity(entity);

        model.addAttribute("success", PAGE_TYPE + entity.getName() + " updated successfully");
        model.addAttribute("pageType", PAGE_TYPE);
        return "success";
    }

    @RequestMapping(value = {"/delete/{entityId}"}, method = RequestMethod.GET)
    public String deleteEntity(@PathVariable Long entityId) {
        service.deleteEntityById(entityId);
        return "redirect:/" + PAGE_TYPE + "/list";
    }

}
