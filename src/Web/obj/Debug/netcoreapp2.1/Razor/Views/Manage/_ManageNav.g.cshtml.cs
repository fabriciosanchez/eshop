#pragma checksum "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/Manage/_ManageNav.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "903467286cfe8ca093bbe85a4abf24f8fd86a205"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Manage__ManageNav), @"mvc.1.0.view", @"/Views/Manage/_ManageNav.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Manage/_ManageNav.cshtml", typeof(AspNetCore.Views_Manage__ManageNav))]
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
#line 1 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/_ViewImports.cshtml"
using Microsoft.eShopWeb.Web;

#line default
#line hidden
#line 2 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/_ViewImports.cshtml"
using Microsoft.eShopWeb.Web.ViewModels;

#line default
#line hidden
#line 3 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/_ViewImports.cshtml"
using Microsoft.eShopWeb.Web.ViewModels.Account;

#line default
#line hidden
#line 4 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/_ViewImports.cshtml"
using Microsoft.eShopWeb.Web.ViewModels.Manage;

#line default
#line hidden
#line 5 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/_ViewImports.cshtml"
using Microsoft.AspNetCore.Identity;

#line default
#line hidden
#line 6 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/_ViewImports.cshtml"
using Microsoft.eShopWeb.Infrastructure.Identity;

#line default
#line hidden
#line 1 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/Manage/_ViewImports.cshtml"
using Microsoft.eShopWeb.Web.Views.Manage;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"903467286cfe8ca093bbe85a4abf24f8fd86a205", @"/Views/Manage/_ManageNav.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"460ba3afd06cdbc59bad0a1ade39ac9c11fc1d78", @"/Views/_ViewImports.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"6b3290b6ac67a9a81540f7bbe5f2c69ec45f3e9a", @"/Views/Manage/_ViewImports.cshtml")]
    public class Views_Manage__ManageNav : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "ChangePassword", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "ExternalLogins", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "TwoFactorAuthentication", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 2 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/Manage/_ManageNav.cshtml"
  
    var hasExternalLogins = (await SignInManager.GetExternalAuthenticationSchemesAsync()).Any();

#line default
#line hidden
            BeginContext(155, 47, true);
            WriteLiteral("\n<ul class=\"nav nav-pills nav-stacked\">\n    <li");
            EndContext();
            BeginWriteAttribute("class", " class=\"", 202, "\"", 252, 1);
#line 7 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/Manage/_ManageNav.cshtml"
WriteAttributeValue("", 210, ManageNavPages.IndexNavClass(ViewContext), 210, 42, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(253, 1, true);
            WriteLiteral(">");
            EndContext();
            BeginContext(254, 33, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "07eb1d4315dd45498483f32e6c15be0a", async() => {
                BeginContext(276, 7, true);
                WriteLiteral("Profile");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(287, 13, true);
            WriteLiteral("</li>\n    <li");
            EndContext();
            BeginWriteAttribute("class", " class=\"", 300, "\"", 359, 1);
#line 8 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/Manage/_ManageNav.cshtml"
WriteAttributeValue("", 308, ManageNavPages.ChangePasswordNavClass(ViewContext), 308, 51, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(360, 1, true);
            WriteLiteral(">");
            EndContext();
            BeginContext(361, 43, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "4d81e2760c6b45b48422c08c2215b436", async() => {
                BeginContext(392, 8, true);
                WriteLiteral("Password");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(404, 6, true);
            WriteLiteral("</li>\n");
            EndContext();
#line 9 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/Manage/_ManageNav.cshtml"
     if (hasExternalLogins)
    {

#line default
#line hidden
            BeginContext(444, 11, true);
            WriteLiteral("        <li");
            EndContext();
            BeginWriteAttribute("class", " class=\"", 455, "\"", 514, 1);
#line 11 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/Manage/_ManageNav.cshtml"
WriteAttributeValue("", 463, ManageNavPages.ExternalLoginsNavClass(ViewContext), 463, 51, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(515, 1, true);
            WriteLiteral(">");
            EndContext();
            BeginContext(516, 50, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "1ec874dd31124c3ea245271eac6b1523", async() => {
                BeginContext(547, 15, true);
                WriteLiteral("External logins");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(566, 6, true);
            WriteLiteral("</li>\n");
            EndContext();
#line 12 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/Manage/_ManageNav.cshtml"
    }

#line default
#line hidden
            BeginContext(578, 7, true);
            WriteLiteral("    <li");
            EndContext();
            BeginWriteAttribute("class", " class=\"", 585, "\"", 653, 1);
#line 13 "/mnt/c/Users/fabsanc/Documents/OneDrive - Microsoft/Microsoft/Repositories/azure-cli-scripts/azure-bootcamp-education/sample-apps/eshop/src/Web/Views/Manage/_ManageNav.cshtml"
WriteAttributeValue("", 593, ManageNavPages.TwoFactorAuthenticationNavClass(ViewContext), 593, 60, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(654, 1, true);
            WriteLiteral(">");
            EndContext();
            BeginContext(655, 69, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "a5f4322148a04e8eb8adf43aa08ee712", async() => {
                BeginContext(695, 25, true);
                WriteLiteral("Two-factor authentication");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_3.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(724, 13, true);
            WriteLiteral("</li>\n</ul>\n\n");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public SignInManager<ApplicationUser> SignInManager { get; private set; }
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
