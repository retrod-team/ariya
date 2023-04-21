<main>
    <header>
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                
                <?php
                
                        foreach(getSlider() as $slideList){
                        
                            
                            $id = $slideList['id'];
                            $title = $slideList['title'];
                            $subtitle = $slideList['subtitle'];
                            $img = FRONT_SITE_HERO_IMG.$slideList['img'];
                            
                            echo '
                                <div class="swiper-slide"><img src="'.$img.'"/></div>
                            ';
                        }
                    
                ?>
            
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div>
    </header>

    <section id="aboutSection">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="textContent">
                        <div class="title">
                            <h4>Welcome To </h4>
                            <h2>Arpita Beach Resort</h2>
                        </div>
                        <p>Arpita Beach Resort a beautiful oasis nestled within lush greenery just 3 minutes walking distance from the famous Chandipur Beach. Arpita Beach Resort,Best Resorts in Chandipur Balasore where luxury meets comfort, sophistication meets style & contemporary exteriors meet chic interiors to create a memorable stay. An array of business and leisure facilities with the touch of personalized service ensures that you have a truly delightful experience.</p>.
                        <p>The Best Resorts in Chandipur Balasore rooms and suites are carefully crafted with impeccable attention to the finer details that distinguishes a great stay from the good. The plush interiors with minimalist styling and decor coupled with the essential amenities make Arpita Beach Resort the preferred destination for the discerning tourist & business traveler.</p>
                        <a href="<?= FRONT_SITE.'/about.php' ?>">Read More</a>
                    </div>
                </div>
                <div class="col-md-6"></div>
            </div>
        </div>
    </section>

    <section id="serviceSection">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="content">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>Banquet</h4>
                            <p>Arpita Beach Resort’s banquet hall, with a capacity of 100 pax makes for an ideal location to host business meets & conferences.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="content">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>Find Dine</h4>
                            <p>Arpita Beach Resort’s multi cuisine restaurant Amethyst, has redefined Balasore’s gourmet palate-escape.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="content">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>Lounge Bar</h4>
                            <p>Arpita Beach Resort’s Bar invigorating vibe, electrifying music, scrumptious food and a well stocked bar is what rightly defines Lounge.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="content">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>Travel Desk</h4>
                            <p>Arpita Beach Resort offers travel desk facility to our customers. Plan your awaited trip with Us.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="roomSection">
        <div class="container">
            <div class="row">
                <?= roomSection() ?>
            </div>
        </div>
    </section>

    <section id="aminitySection">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="content">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>Free parking</h4>
                            <p>Provide the parking the hotel for the private use of guests.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="content">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>Complimentary Buffet Breakfast</h4>
                            <p>We have a complimentary breakfast buffet has a lot of tasty dishes available from 7 to 10 am.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="content">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>WiFi And Broadbandb Internet</h4>
                            <p>We provide Internet Services for secure wired & wireless Wi-Fi to our guests.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="content">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>In House Laundry Facility</h4>
                            <p>Every night, massive loads of dirty towels, sheets, tablecloths, uniforms and other laundry is produced, to provide people with wash & clean laundry.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="content">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>Station Pick-up And Drop</h4>
                            <p>The Travel desk / Concierge arrange the pick up and drop for their hotel's guests from their station or to their station.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="content">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>In-House Mini Bar</h4>
                            <p>A mini-bar consists of a refrigerator packed with snacks and drinks. A basic mini-bar is stocked with alcoholic drinks, soda, and snack foods.</p>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>

    <section id="packageSection">
        <div class="container">
            <div class="title">
                <h2>Tour Packages</h2>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="content">
                        <div class="imgCon"><img src="" alt=""></div>
                        <div class="text">
                            <div class="packageBody">
                                <div class="left"><h4>BEST OF CHANDIPUR & BHITARAKANIKA TOUR</h4></div>
                                <div class="right"><span>Rs.4,999.00</span></div>
                            </div>
                            <div class="packageFooter">
                                <div class="left">
                                    <i></i>
                                    <span> No of Days: 2 nights 3 days</span>
                                </div>
                                <div class="right">
                                    <i></i>
                                    <span>8</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="content">
                        <div class="imgCon"><img src="" alt=""></div>
                        <div class="text">
                            <div class="packageBody">
                                <div class="left"><h4>BEST OF CHANDIPUR & BHITARAKANIKA TOUR</h4></div>
                                <div class="right"><span>Rs.4,999.00</span></div>
                            </div>
                            <div class="packageFooter">
                                <div class="left">
                                    <i></i>
                                    <span> No of Days: 2 nights 3 days</span>
                                </div>
                                <div class="right">
                                    <i></i>
                                    <span>8</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="content">
                        <div class="imgCon"><img src="" alt=""></div>
                        <div class="text">
                            <div class="packageBody">
                                <div class="left"><h4>BEST OF CHANDIPUR & BHITARAKANIKA TOUR</h4></div>
                                <div class="right"><span>Rs.4,999.00</span></div>
                            </div>
                            <div class="packageFooter">
                                <div class="left">
                                    <i></i>
                                    <span> No of Days: 2 nights 3 days</span>
                                </div>
                                <div class="right">
                                    <i></i>
                                    <span>8</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="content">
                        <div class="imgCon"><img src="" alt=""></div>
                        <div class="text">
                            <div class="packageBody">
                                <div class="left"><h4>BEST OF CHANDIPUR & BHITARAKANIKA TOUR</h4></div>
                                <div class="right"><span>Rs.4,999.00</span></div>
                            </div>
                            <div class="packageFooter">
                                <div class="left">
                                    <i></i>
                                    <span> No of Days: 2 nights 3 days</span>
                                </div>
                                <div class="right">
                                    <i></i>
                                    <span>8</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="content">
                        <div class="imgCon"><img src="" alt=""></div>
                        <div class="text">
                            <div class="packageBody">
                                <div class="left"><h4>BEST OF CHANDIPUR & BHITARAKANIKA TOUR</h4></div>
                                <div class="right"><span>Rs.4,999.00</span></div>
                            </div>
                            <div class="packageFooter">
                                <div class="left">
                                    <i></i>
                                    <span> No of Days: 2 nights 3 days</span>
                                </div>
                                <div class="right">
                                    <i></i>
                                    <span>8</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="content">
                        <div class="imgCon"><img src="" alt=""></div>
                        <div class="text">
                            <div class="packageBody">
                                <div class="left"><h4>BEST OF CHANDIPUR & BHITARAKANIKA TOUR</h4></div>
                                <div class="right"><span>Rs.4,999.00</span></div>
                            </div>
                            <div class="packageFooter">
                                <div class="left">
                                    <i></i>
                                    <span> No of Days: 2 nights 3 days</span>
                                </div>
                                <div class="right">
                                    <i></i>
                                    <span>8</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="gallerySection">
        <div class="container">
            <div class="row">
            <?php
                                            
                $sql = mysqli_query($conDB, "select * from gallery order by id DESC");
                
                if(mysqli_num_rows($sql)>0){
                    $name = $detail['name'];
                while($imgrow = mysqli_fetch_assoc($sql)){
                    $img = FRONT_SITE_IMG.'gallery/'.$imgrow['img'];
                    $id = $imgrow['id'];
                    
                    echo '
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="imgContent"><img src="'.$img.'" alt="'.$name.' image"/></div>
                        </div>
                    ';
                }
            }
            
            ?>
            </div>
        </div>
    </section>

    <section id="actionSection">
        <div class="container">
            <div class="content">
                <h2></h2>
                <p></p>
                <a href="">Book Nopw</a>
            </div>
        </div>
    </section>

    <section id="testimonialSection">
        <div class="container">
            
        </div>
    </section>

    <section id="contactSection">
        <div class="coontainer"></div>
    </section>
    
</main>