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
import pl.kropladev.wallet.model.CounterState;
import pl.kropladev.wallet.service.BaseService;

import java.util.List;

/**
 * Created by kropla on 19.11.15.
 */

@Controller
@RequestMapping("/counterState")
public class CounterStateController {

    private static final Object PAGE_TYPE = "counter_state";
    @Autowired
    @Qualifier("counterStateService")
    BaseService<CounterState> service;

    @Autowired
    MessageSource messageSource;

    @RequestMapping(value = {"","/", "/list"}, method = RequestMethod.GET)
    public String listAll(ModelMap model) {
        List<CounterState> dbEntities = service.findAllEntities();
        model.addAttribute("list", dbEntities);
        return "all_"+PAGE_TYPE;
    }


    @RequestMapping(value = {"/new"}, method = RequestMethod.GET)
    public String newEntity(ModelMap model) {
        CounterState entity = new CounterState();
        model.addAttribute("entity", entity);
        model.addAttribute("edit", false);
        return "add_" + PAGE_TYPE;
    }

    @RequestMapping(value = {"/new"}, method = RequestMethod.POST)
    public String saveEntity(CounterState entity, BindingResult result,
                             ModelMap model) {

        if (result.hasErrors()) {
            return "add_" + PAGE_TYPE;
        }

        service.saveEntity(entity);

        model.addAttribute("success", PAGE_TYPE + entity.getId().toString() + " registered successfully");
        model.addAttribute("pageType", PAGE_TYPE);
        return "success";
    }

    @RequestMapping(value = {"/edit/{entityId}"}, method = RequestMethod.GET)
    public String editEntity(@PathVariable Long entityId, ModelMap model) {
        CounterState entity = service.findEntityById(entityId);
        model.addAttribute("entity", entity);
        model.addAttribute("edit", true);
        return "add_" + PAGE_TYPE;
    }


    @RequestMapping(value = {"/edit/{entityId}"}, method = RequestMethod.POST)
    public String updateEntity(CounterState entity, BindingResult result,
                               ModelMap model, @PathVariable Long entityId) {

        if (result.hasErrors()) {
            return "add_" + PAGE_TYPE;
        }

        service.updateEntity(entity);

        model.addAttribute("success", PAGE_TYPE + entity.getId().toString() + " updated successfully");
        model.addAttribute("pageType", PAGE_TYPE);
        return "success";
    }

    @RequestMapping(value = {"/delete/{entityId}"}, method = RequestMethod.GET)
    public String deleteEntity(@PathVariable Long entityId) {
        service.deleteEntityById(entityId);
        return "redirect:/" + PAGE_TYPE + "/list";
    }

}
