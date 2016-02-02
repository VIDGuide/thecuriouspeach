<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PublicMaster.Master" CodeBehind="default.aspx.vb" Inherits="TheCuriousPeach._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <header style="min-height: 1267px;">
        <div class="header-content">
            <div class="header-content-inner">
                <h1>Your electronic diary - Track your sex life!</h1>
                <hr>
                <p>The curious peach is an electronic diary and logging system for keeping tabs on your own sex life!</p>
                <p>Record as much (or as little) detail as you like about your sexual events. By yourself and with partners. Track the details, and generate graphs, details and analytics.</p>
                <a href="#about" class="btn btn-primary btn-xl page-scroll">Want to know more?</a>
            </div>
        </div>
    </header>

    <section class="bg-primary" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Statistics, graphs and analytics!</h2>
                    <hr class="light">
                    <p class="text-faded">Ever wanted to know the average number of times you've had sex in the last month? Want to know how long between times? How many orgasms you have by yourself, and how many with a partener? If you put in the data, we'll give you the details!</p>
                    <p>
                        No strings attached, no costs, and completely anonymous. You can keep you data 100% private to yourself, or combine your statistics with the world.
                        <br />
                        Compare your metrics against global averages and much more!
                    </p>
                    <a href="#contact" class="btn btn-default btn-xl page-scroll">Get Started!</a>
                </div>
            </div>
        </div>
    </section>

    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Simple & Easy</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-diamond wow bounceIn text-primary"></i>
                        <h3>Free & Anonymous</h3>
                        <p class="text-muted">We won't even ask for your name, sign up with just enough information to be able to come back, and start recording data.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-paper-plane wow bounceIn text-primary" data-wow-delay=".1s"></i>
                        <h3>Quick and Easy</h3>
                        <p class="text-muted">Log in, and start recording. Back-date data if you know it, or just start from today.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-newspaper-o wow bounceIn text-primary" data-wow-delay=".2s"></i>
                        <h3>Live & Available</h3>
                        <p class="text-muted">Globally available, 24/7. Log data as it happens, or afterwards as you choose.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-heart wow bounceIn text-primary" data-wow-delay=".3s"></i>
                        <h3>Comparisons</h3>
                        <p class="text-muted">Compare your data and metrics against the world. Choose to keep your data 100% private, or choose to anonymously contribute your data to the gloabl collection for comparisons.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="no-padding" id="portfolio">
        <div class="container-fluid">
            <div class="row no-gutter">
                <div class="col-lg-4 col-sm-6">
                    <a href="#" class="portfolio-box">
                        <img src="img/portfolio/1.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Advanced Reporting
                                </div>
                                <div class="project-name">
                                    Advanced reporting and analytics at your fingertips
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#" class="portfolio-box">
                        <img src="img/portfolio/2.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Graphs & Statistics
                                </div>
                                <div class="project-name">
                                    See trends and changes easily in graph form
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#" class="portfolio-box">
                        <img src="img/portfolio/3.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Easy Access
                                </div>
                                <div class="project-name">
                                    Add data from your mobile, tablet, laptop or PC
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <aside class="bg-dark">
        <div class="container text-center">
            <div class="call-to-action">
                <h2>Sign up now and start collecting data</h2>
                <a href="#contact" style="margin: 20px;" class="btn btn-default btn-xl wow tada">Sign up now!</a>
                <a href="#contact" style="margin: 20px;" class="btn btn-default btn-xl wow tada">Logon</a>
            </div>
        </div>
    </aside>

    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get Started!</h2>
                    <hr class="primary">
                    <p>Ready to sign up? Fill in the fields below and start recording!</p>
                </div>
            </div>
            <form action="default.aspx#contact" method="post">
                <div class="form-group" style="margin-top: 25px;">
                    <div class="row">
                        <div id="ResultBox" runat="server"></div>
                        <div class="col-sm-3 col-sm-offset-2">
                            <label class="control-label" for="Email">Email address:</label>
                        </div>
                        <div class="col-sm-6">
                            <input placeholder="Email address" title="Enter your email address" required="required" name="Email" id="Email" type="email" class="form-control" style="margin-top: 10px;" />
                        </div>
                        <div class="col-sm-3 col-sm-offset-2">
                            <label class="control-label" for="Password1">Password:</label>
                        </div>
                        <div class="col-sm-6">
                            <input placeholder="Password" title="Enter a password" required="required" name="Password1" id="Password1" type="password" class="form-control" style="margin-top: 10px;" />
                        </div>
                        <div class="col-sm-3 col-sm-offset-2">
                            <label class="control-label" for="Password2">Verify Password:</label>
                        </div>
                        <div class="col-sm-6">
                            <input placeholder="Password" title="Enter your password again" required="required" name="Password2" id="Password2" type="password" class="form-control" style="margin-top: 10px;" />
                        </div>

                        <div class="col-sm-3 col-sm-offset-2">
                            <label class="control-label" for="Gender">Gender:</label>
                        </div>
                        <div class="col-sm-6" style="text-align: center;">
                            <input title="You must select a gender" required="required" style="margin-top: 10px;" type="radio" id="GenderM" name="Gender" value="M" />
                            Male
                        <input title="You must select a gender" required="required" type="radio" id="GenderF" name="Gender" value="F" style="margin-top: 10px; margin-left: 50px;" />
                            Female
                        </div>
                        <div class="col-sm-3 col-sm-offset-2">
                            <label class="control-label" for="Email">Date of Birth:</label>
                        </div>
                        <div class="col-sm-6">
                            <input title="Enter your date of birth" required="required" id="DOB" name="DOB" type="date" class="form-control" style="margin-top: 10px;" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-9 col-sm-offset-2">
                            <p style="margin-top: 25px;">
                                <small>We only collect email addresses for the purposes of password recovery. We will not email you in any other context. The details you provide are not used to identify you in any way, nor shared with any other 3rd parties.
                                </small>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-2">
                            <button style="margin: 20px;" class="btn btn-default btn-xl wow tada pull-right" type="submit">Sign Up</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>

</asp:Content>
