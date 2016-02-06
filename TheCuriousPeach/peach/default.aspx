<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/peach/Peach.Master" CodeBehind="default.aspx.vb" Inherits="TheCuriousPeach._default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper">

        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <a class="pull-right btn btn-primary btn-lg" href="NewEntry.aspx"><i class="fa fa-pencil"></i> New Entry</a>
                    <h1 style="    margin-top: 5px;" class="page-header">Dashboard <small>Statistics Overview</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li class="active">
                            <i class="fa fa-dashboard"></i> Your sex life: At a glance
                        </li>
                    </ol>
                    
                </div>
            </div>
            <!-- /.row -->

            <div class="row" runat="server" id="WelcomeBox">
                <div class="col-lg-12">
                    <div class="alert alert-info alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <i class="fa fa-info-circle"></i> <strong>New here?</strong> The dashboard below shows your sex-life statistics as you start entering data. Input some records to start seeing it take shape!
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-star fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><span runat="server" id="TotalOCount"></span></div>
                                    <div>Total Orgasms!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-plus fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><span runat="server" id="SexCountSpan"></span></div>
                                    <div>Sex Events!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-bar-chart fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><span runat="server" id="MastCountSpan"></span></div>
                                    <div>Masturbations!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-globe fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><span runat="server" id="AvgO"></span></div>
                                    <div>Global Average Orgasms!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> Orgasms/Day - Last 30 days</h3>
                        </div>
                        <div class="panel-body">
                            <div id="morris-area-chart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-long-arrow-right fa-fw"></i> Orgasms By Type</h3>
                        </div>
                        <div class="panel-body">
                            <div id="morris-donut-chart"></div>
                            <div class="text-right">
                                <a href="#">View Details <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i>Statistics</h3>
                        </div>
                        <div class="panel-body">
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <span class="badge">12:00 - 1:00</span>
                                    <i class="fa fa-fw fa-calendar"></i> Most common hour to masturbate:
                                </a>
                                <a href="#" class="list-group-item">
                                    <span class="badge">14:00 - 15:00</span>
                                    <i class="fa fa-fw fa-comment"></i> Most common hour for sex:
                                </a>
                                <a href="#" class="list-group-item">
                                    <span class="badge">3.25</span>
                                    <i class="fa fa-fw fa-truck"></i> Average orgasms per masturbation session:
                                </a>
                                <a href="#" class="list-group-item">
                                    <span class="badge">1.25</span>
                                    <i class="fa fa-fw fa-money"></i> Average orgasms per sex session:
                                </a>
                                <a href="#" class="list-group-item">
                                    <span class="badge">1 hour ago</span>
                                    <i class="fa fa-fw fa-user"></i> A new user has been added
                                </a>
                                <a href="#" class="list-group-item">
                                    <span class="badge">3 days</span>
                                    <i class="fa fa-fw fa-check"></i> Longest time between orgasms:
                                </a>
                                <a href="#" class="list-group-item">
                                    <span class="badge">1</span>
                                    <i class="fa fa-fw fa-globe"></i> Most sessions in 1 day:
                                </a>
                                <a href="#" class="list-group-item">
                                    <span class="badge">5</span>
                                    <i class="fa fa-fw fa-check"></i> Most Orgasms in 1 session:
                                </a>
                            </div>
                            <div class="text-right">
                                <a href="#">View All Statistics <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-money fa-fw"></i> Last 8 Recorded Events</h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Time Start</th>
                                            <th>Session Duration</th>
                                            <th>Type</th>
                                            <th>Orgasms</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>5/11/2015</td>
                                            <td>00:31:13</td>
                                            <td>0:00</td>
                                            <td>Masturbation</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>6/11/2015</td>
                                            <td>00:35:13</td>
                                            <td>0:00</td>
                                            <td>Masturbation</td>
                                            <td>2</td>
                                        </tr>
                                        <tr>
                                            <td>7/11/2015</td>
                                            <td>21:00:58</td>
                                            <td>0:00</td>
                                            <td>Masturbation</td>
                                            <td>3</td>
                                        </tr>
                                        <tr>
                                            <td>8/11/2015</td>
                                            <td>20:28:43</td>
                                            <td>0:00</td>
                                            <td>Masturbation</td>
                                            <td>3</td>
                                        </tr>
                                        <tr>
                                            <td>11/11/2015</td>
                                            <td>23:48:46</td>
                                            <td>0:00</td>
                                            <td>Masturbation</td>
                                            <td>2</td>
                                        </tr>
                                        <tr>
                                            <td>14/11/2015</td>
                                            <td>20:14:56</td>
                                            <td>0:00</td>
                                            <td>Masturbation</td>
                                            <td>3</td>
                                        </tr>
                                        <tr>
                                            <td>16/11/2015</td>
                                            <td>23:26:19</td>
                                            <td>0:00</td>
                                            <td>Sex</td>
                                            <td>1</td>
                                        </tr>
                                        <tr>
                                            <td>17/11/2015</td>
                                            <td>00:59:42</td>
                                            <td>0:00</td>
                                            <td>Masturbation</td>
                                            <td>3</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="text-right">
                                <a href="#">View More Events <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container-fluid -->

    </div>

</asp:Content>
