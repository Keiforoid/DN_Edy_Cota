#pragma checksum "C:\Users\Edy\Documents\GitHub\DN_Edy_Cota\06_AspNetCore_MVC_con_Entity_Framework\E2\GymManager.Web\GymManager.Web\Views\Invoicing\_PrintView.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "4812f06d750b85b7fab8b5ab28a61dd661a5e177"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Invoicing__PrintView), @"mvc.1.0.view", @"/Views/Invoicing/_PrintView.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"4812f06d750b85b7fab8b5ab28a61dd661a5e177", @"/Views/Invoicing/_PrintView.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"23ac09be4bcfaa7f9829a01d1a134874eaae1f3b", @"/Views/_ViewImports.cshtml")]
    public class Views_Invoicing__PrintView : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"
<style>
    body {
        margin-top: 20px;
        background-color: #f7f7ff;
    }

    #invoice {
        padding: 0px;
    }

    .invoice {
        position: relative;
        background-color: #FFF;
        min-height: 680px;
        padding: 15px
    }

        .invoice header {
            padding: 10px 0;
            margin-bottom: 20px;
            border-bottom: 1px solid #0d6efd
        }

        .invoice .company-details {
            text-align: right
        }

            .invoice .company-details .name {
                margin-top: 0;
                margin-bottom: 0
            }

        .invoice .contacts {
            margin-bottom: 20px
        }

        .invoice .invoice-to {
            text-align: left
        }

            .invoice .invoice-to .to {
                margin-top: 0;
                margin-bottom: 0
            }

        .invoice .invoice-details {
            text-align: right
        }

            .invoice .invoi");
            WriteLiteral(@"ce-details .invoice-id {
                margin-top: 0;
                color: #0d6efd
            }

        .invoice main {
            padding-bottom: 50px
        }

            .invoice main .thanks {
                margin-top: -100px;
                font-size: 2em;
                margin-bottom: 50px
            }

            .invoice main .notices {
                padding-left: 6px;
                border-left: 6px solid #0d6efd;
                background: #e7f2ff;
                padding: 10px;
            }

                .invoice main .notices .notice {
                    font-size: 1.2em
                }

        .invoice table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            margin-bottom: 20px
        }

            .invoice table td,
            .invoice table th {
                padding: 15px;
                background: #eee;
                border-bottom: 1px solid #fff
            }
");
            WriteLiteral(@"
            .invoice table th {
                white-space: nowrap;
                font-weight: 400;
                font-size: 16px
            }

            .invoice table td h3 {
                margin: 0;
                font-weight: 400;
                color: #0d6efd;
                font-size: 1.2em
            }

            .invoice table .qty,
            .invoice table .total,
            .invoice table .unit {
                text-align: right;
                font-size: 1.2em
            }

            .invoice table .no {
                color: #fff;
                font-size: 1.6em;
                background: #0d6efd
            }

            .invoice table .unit {
                background: #ddd
            }

            .invoice table .total {
                background: #0d6efd;
                color: #fff
            }

            .invoice table tbody tr:last-child td {
                border: none
            }

            .invoice table tfo");
            WriteLiteral(@"ot td {
                background: 0 0;
                border-bottom: none;
                white-space: nowrap;
                text-align: right;
                padding: 10px 20px;
                font-size: 1.2em;
                border-top: 1px solid #aaa
            }

            .invoice table tfoot tr:first-child td {
                border-top: none
            }

    .card {
        position: relative;
        display: flex;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
        background-color: #fff;
        background-clip: border-box;
        border: 0px solid rgba(0, 0, 0, 0);
        border-radius: .25rem;
        margin-bottom: 1.5rem;
        box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
    }

    .invoice table tfoot tr:last-child td {
        color: #0d6efd;
        font-size: 1.4em;
        border-top: 1px solid #0d6efd
    }

    .invoice table tfoot tr td:first-child {
    ");
            WriteLiteral("    border: none\r\n    }\r\n\r\n    .invoice footer {\r\n        width: 100%;\r\n        text-align: center;\r\n        color: #777;\r\n        border-top: 1px solid #aaa;\r\n        padding: 8px 0\r\n    }\r\n\r\n    ");
            WriteLiteral(@"@media print {
        .invoice {
            font-size: 11px !important;
            overflow: hidden !important
        }

            .invoice footer {
                position: absolute;
                bottom: 10px;
                page-break-after: always
            }

            .invoice > div:last-child {
                page-break-before: always
            }
    }

    .invoice main .notices {
        padding-left: 6px;
        border-left: 6px solid #0d6efd;
        background: #e7f2ff;
        padding: 10px;
    }
</style>

<div class=""container"" mt-5 mb-3>
    <div class=""card"">
        <div class=""card-body"">
            <div id=""invoice"">
");
            WriteLiteral(@"                <div class=""invoice overflow-auto"">
                    <div style=""min-width: 600px"">
                        <header>
                            <div class=""row"">
                                <div class=""col"">
                                    <a href=""javascript:;"">
                                        <img src=""https://localhost:44310/Images/2626372.jpg"" width=""80"" />
                                    </a>
                                </div>
                                <div class=""col company-details"">
                                    <h2 class=""name"">
                                        <a target=""_blank"" href=""javascript:;"">
                                            Arboshiki
                                        </a>
                                    </h2>
                                    <div>455 Foggy Heights, AZ 85004, US</div>
                                    <div>(123) 456-789</div>
                                    <div>compa");
            WriteLiteral(@"ny@example.com</div>
                                </div>
                            </div>
                        </header>
                        <main>
                            <div class=""row contacts"">
                                <div class=""col invoice-to"">
                                    <div class=""text-gray-light"">INVOICE TO:</div>
                                    <h2 class=""to"">John Doe</h2>
                                    <div class=""address"">796 Silver Harbour, TX 79273, US</div>
                                    <div class=""email"">
                                        <a href=""mailto:john@example.com"">john@example.com</a>
                                    </div>
                                </div>
                                <div class=""col invoice-details"">
                                    <h1 class=""invoice-id"">INVOICE 3-2-1</h1>
                                    <div class=""date"">Date of Invoice: 01/10/2018</div>
                      ");
            WriteLiteral(@"              <div class=""date"">Due Date: 30/10/2018</div>
                                </div>
                            </div>
                            <table>
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th class=""text-left"">DESCRIPTION</th>
                                        <th class=""text-right"">HOUR PRICE</th>
                                        <th class=""text-right"">HOURS</th>
                                        <th class=""text-right"">TOTAL</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class=""no"">04</td>
                                        <td class=""text-left"">
                                            <h3>
                                                <a target=""_");
            WriteLiteral(@"blank"" href=""javascript:;"">
                                                    Youtube channel
                                                </a>
                                            </h3>
                                            <a target=""_blank"" href=""javascript:;"">
                                                Useful videos
                                            </a> to improve your Javascript skills. Subscribe and stay tuned :)
                                        </td>
                                        <td class=""unit"">$0.00</td>
                                        <td class=""qty"">100</td>
                                        <td class=""total"">$0.00</td>
                                    </tr>
                                    <tr>
                                        <td class=""no"">01</td>
                                        <td class=""text-left"">
                                            <h3>Website Design</h3>Creating a recognizable desi");
            WriteLiteral(@"gn solution based on the company's existing visual identity
                                        </td>
                                        <td class=""unit"">$40.00</td>
                                        <td class=""qty"">30</td>
                                        <td class=""total"">$1,200.00</td>
                                    </tr>
                                    <tr>
                                        <td class=""no"">02</td>
                                        <td class=""text-left"">
                                            <h3>Website Development</h3>Developing a Content Management System-based Website
                                        </td>
                                        <td class=""unit"">$40.00</td>
                                        <td class=""qty"">80</td>
                                        <td class=""total"">$3,200.00</td>
                                    </tr>
                                    <tr>
                           ");
            WriteLiteral(@"             <td class=""no"">03</td>
                                        <td class=""text-left"">
                                            <h3>Search Engines Optimization</h3>Optimize the site for search engines (SEO)
                                        </td>
                                        <td class=""unit"">$40.00</td>
                                        <td class=""qty"">20</td>
                                        <td class=""total"">$800.00</td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan=""2""></td>
                                        <td colspan=""2"">SUBTOTAL</td>
                                        <td>$5,200.00</td>
                                    </tr>
                                    <tr>
                                        <td colspan=""2""></td>
                                   ");
            WriteLiteral(@"     <td colspan=""2"">TAX 25%</td>
                                        <td>$1,300.00</td>
                                    </tr>
                                    <tr>
                                        <td colspan=""2""></td>
                                        <td colspan=""2"">GRAND TOTAL</td>
                                        <td>$6,500.00</td>
                                    </tr>
                                </tfoot>
                            </table>
                            <div class=""thanks"">Thank you!</div>
                            <div class=""notices"">
                                <div>NOTICE:</div>
                                <div class=""notice"">A finance charge of 1.5% will be made on unpaid balances after 30 days.</div>
                            </div>
                        </main>
                        <footer>Invoice was created on a computer and is valid without the signature and seal.</footer>
                    </div>
      ");
            WriteLiteral("              <!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->\r\n                    <div></div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
