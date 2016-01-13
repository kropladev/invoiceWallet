package pl.kropladev.wallet.controller;

/**
 * Created by kropla on 17.11.15.
 */
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/*import javax.validation.Valid;*/

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pl.kropladev.wallet.model.Invoice;
import pl.kropladev.wallet.service.InvoiceService;

@Controller
@RequestMapping("/invoice")
public class InvoiceController {

    @Autowired
    InvoiceService service;

    @Autowired
    MessageSource messageSource;

    /*
     * This method will list all existing employees.
     */
    @RequestMapping(value = {"", "/","/list" }, method = RequestMethod.GET)
    public String listInvoices(Locale locale,ModelMap model) {

        List<Invoice> invoices = service.findAllInvoices();
        model.addAttribute("invoices", invoices);

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

        String formattedDate = dateFormat.format(date);
        model.addAttribute("pageTitle", "allinvoices");

        return "allinvoices";
    }

    /*
     * This method will provide the medium to add a new invoice.
     */
    @RequestMapping(value = { "/new" }, method = RequestMethod.GET)
    public String newInvoice(ModelMap model) {
        Invoice invoice = new Invoice();
        model.addAttribute("invoice", invoice);
        model.addAttribute("edit", false);
        return "registration";
    }

    /*
     * This method will be called on form submission, handling POST request for
     * saving employee in database. It also validates the user input
     */
    @RequestMapping(value = { "/new" }, method = RequestMethod.POST)
    public String saveInvoice( Invoice invoice, BindingResult result,
                               ModelMap model) {

        if (result.hasErrors()) {
            return "registration";
        }

        service.saveInvoice(invoice);

        model.addAttribute("success", "Invoice " + invoice.getInvoiceNumber() + " registered successfully");
        model.addAttribute("pageType", "invoice");

        return "success";
    }


    /*
     * This method will provide the medium to update an existing employee.
     */
    @RequestMapping(value = { "/edit/{invoiceId}" }, method = RequestMethod.GET)
    public String editInvoice(@PathVariable Long invoiceId, ModelMap model) {
        Invoice invoice = service.findInvoiceById(invoiceId);
        model.addAttribute("invoice", invoice);
        model.addAttribute("edit", true);
        return "registration";
    }

    /*
     * This method will be called on form submission, handling POST request for
     * updating employee in database. It also validates the user input
     */
    @RequestMapping(value = { "/edit/{invoiceId}" }, method = RequestMethod.POST)
    public String updateInvoice( Invoice invoice, BindingResult result,
                                 ModelMap model, @PathVariable  Long invoiceId) {

        if (result.hasErrors()) {
            return "registration";
        }

        service.updateInvoice(invoice);

        model.addAttribute("success", "Invoice " + invoice.getInvoiceNumber()  + " updated successfully");
        model.addAttribute("pageType", "invoice");
        return "success";
    }


    /*
     * This method will delete an employee by it's SSN value.
     */
    @RequestMapping(value = { "/delete/{invoiceId}" }, method = RequestMethod.GET)
    public String deleteInvoice(@PathVariable  Long invoiceId) {
        service.deleteInvoiceById(invoiceId);
        return "redirect:/invoice/list";
    }

}