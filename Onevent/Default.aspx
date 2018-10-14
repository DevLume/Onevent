<%@ Page Title="Onevent" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
    
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="https://renginiai.kasvyksta.lt/uploads/events/60836/big/855083c4.jpg" alt="Lizdo Ekspedicija" style="width:100%;">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Lizdo Ekspedicija</h5>
                        <p>...</p>
                    </div>
                </div>

                <div class="item">
                    <img src="https://renginiai.kasvyksta.lt/uploads/events/60836/big/855083c4.jpg" alt="Lizdo Ekspedicija" style="width:100%;">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Lizdo Ekspedicija</h5>
                        <p>...</p>
                    </div>
                </div>
    
                <div class="item">
                    <img src="https://renginiai.kasvyksta.lt/uploads/events/60836/big/855083c4.jpg" alt="Lizdo Ekspedicija" style="width:100%;">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Lizdo Ekspedicija</h5>
                        <p>...</p>
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    
    <div id="TitleContent" style="text-align: center">
        <div class="col-md-12 pt-1">
            <div class="card" style="padding: 5px 5px 20px 5px">
            <div class="card-header">
                <h3></h3>
            </div>
            <div class="card-body">
            <div id="CategoryMenu" style="text-align: center">       
                <h2><a href=# runat="server" style="text-decoration:none; color:black">Find Event for you!</a></h2>
                <asp:ListView ID="categoryList"  
                    ItemType="Onevent.Models.Category" 
                    runat="server"
                    SelectMethod="GetCategories" >
                    <ItemTemplate>
                        <b style="font-size: large; font-style: normal">
                            <a href="/EventList.aspx?id=<%#: Item.CategoryID %>">
                            <%#: Item.CategoryName %>
                            </a>
                        </b>
                    </ItemTemplate>
                    <ItemSeparatorTemplate>  |  </ItemSeparatorTemplate>
                </asp:ListView>
                
                
                            
                        
            </div>
                <div class="navbar form-inline">
            <div class="container">

                <div class="navbar-form form-group" style="width: 500px !important">
                        <form class="navbar-form" role="search">
                            <div class="form-group">
                                <button type="button" class="btn btn-light"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></button>
                                <input class="form-control" type="search" placeholder="Search events..." aria-label="Search" style="width: 500px !important">
                     </div>
                            </form>
                    </div>
                </div>
                </div>
        </div>
                
                </div>
                </div>
                </div>
    
    <div id="Popular-events" style="padding-top: 200px">
        <div class="content-title">
            <h2><a href=# runat="server" style="text-decoration:none; color:black">Popular</a></h2>
            <div class="content-title-arrow"></div>
        </div>
        <div class="card-container">
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
        </div>
    </div>

    <div id="New-events">
        <div class="content-title">
            <h2><a href=# runat="server" style="text-decoration:none; color:black">New</a></h2>
            <div class="content-title-arrow"></div>
        </div>
        <div class="card-container">
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
            <article class="card">
                <img src="http://images1.tiketa.lt/Files/2018.02/id_53463_294x324.jpg">
                <div class="text-block"> 
                    <h5>RASTRELLI CELLO QUARTETT-From Brahms till Beatles</h5>
                    <p>Data</p>
                    <p>Kaina</p>
                    <div class="form-inline">
                        <a href="#" class="button">Book</a>
                        <a href="#" class="button-buy">Buy</a>
                    </div>
                </div>
        </article>
        </div>
    </div>
    
</asp:Content>
