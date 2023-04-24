<main>
    <header class="videoWithSlider" id="heroSection">
        <div id="video">
            <video width="440px" loop="true" autoplay="autoplay" controls="false" muted>
                <source src="video/herovideo.mp4" type="video/mp4" />
            </video>
        </div>
        <div class="bg">
            <?php

            foreach ($heroSecArray as $val) {
                $img = $val['img'];
                $target = $val['target'];
                echo '
                        <img id="' . $target . '" src="' . $img . '">
                    ';
            }

            ?>
        </div>

        <div class="Content">

            <?php
            foreach ($heroSecArray as $val) {
                $title = $val['title'];
                $target = $val['target'];
                echo '
                        <a class="heroImgBtn h2" data-target="' . $target . '" href="javascript:void(0)">' . $title . '</a>
                    ';
            }
            ?>

        </div>

    </header>

    <section id="aboutSection" class="section-hero">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 col-sm-12">
                    <div class="hero-text-box">
                        <div class="title">
                            <h4>Welcome To </h4>
                            <h1>Arpita Beach Resort</h1>
                        </div>
                        <p>Arpita Beach Resort a beautiful oasis nestled within lush greenery just 3 minutes walking distance from the famous Chandipur Beach. Arpita Beach Resort,Best Resorts in Chandipur Balasore where luxury meets comfort, sophistication meets style & contemporary exteriors meet chic interiors to create a memorable stay. An array of business and leisure facilities with the touch of personalized service ensures that you have a truly delightful experience.</p>
                        <a href="<?= FRONT_SITE . '/about.php' ?>" class="simpleBtn">
                            <div class="text"><span>Book Now</span><span>Book Now</span></div>
                        </a>

                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="imgBox">
                        <div class="img img1 imgHover"><img src="<?= FRONT_SITE_IMG . 'page/aboutImg1.jpg' ?>" alt="<?= SITE_NAME . ' about image' ?>" /></div>
                        <div class="img img2 imgHover"><img src="<?= FRONT_SITE_IMG . 'page/aboutImg2.jpg' ?>" alt="<?= SITE_NAME . ' about image' ?>" /></div>
                        <div class="img img3 imgHover"><img src="<?= FRONT_SITE_IMG . 'page/aboutImg3.jpg' ?>" alt="<?= SITE_NAME . ' about image' ?>" /></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="serviceSection">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="content iconWithTextContent center">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>Banquet</h4>
                            <p>Arpita Beach Resort’s banquet hall, with a capacity of 100 pax makes for an ideal location to host business meets & conferences.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="content iconWithTextContent center">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>Find Dine</h4>
                            <p>Arpita Beach Resort’s multi cuisine restaurant Amethyst, has redefined Balasore’s gourmet palate-escape.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="content iconWithTextContent center">
                        <div class="icon"></div>
                        <div class="text">
                            <h4>Lounge Bar</h4>
                            <p>Arpita Beach Resort’s Bar invigorating vibe, electrifying music, scrumptious food and a well stocked bar is what rightly defines Lounge.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="content iconWithTextContent center">
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
                <?php

                foreach ($aminitySection as $val) {
                    $name = $val['name'];
                    $desc = $val['desc'];
                    $icon = $val['icon'];
                    $url = $val['url'];
                    echo '
                            <div class="col-md-4 mb-3">
                                <div class="card" data-title="' . $name . '">
                                    <div class="imgBx"> 
                                        ' . $icon . '
                                    </div>
            
                                    <div class="contentBx">
            
                                        <h2>' . $name . '</h2>
            
                                        <div class="paragraph">
                                            ' . $desc . '
                                        </div>

                                        <a href="' . $url . '">Read More</a>
                                    </div>
            
                                </div>
                            </div>
                        ';
                }

                ?>


            </div>
        </div>
    </section>

    <section id="packageSection">
        <div class="container">
            <div class="title">
                <h2>Tour Packages</h2>
            </div>
            <div class="row">
                <?php

                foreach ($package as $val) {
                    $name = $val['name'];
                    $price = $val['price'];
                    $duration = $val['duration'];
                    $persion = $val['persion'];
                    $img = $val['img'];
                    $url = $val['url'];
                    echo '

                            <div class="col-md-4">
                                <div class="product-details">
                                    <div class="product-tumb"> <img src="' . $img . '" alt=""> </div>
                                    <h4><a href="">' . $name . '</a></h4>
                                        <div class="product-bottom-details">
                                            <div class="product-price"><small>Rs ' . $price . '</small>Rs ' . $price . '</div>
                                            <div class="product-links"> </div>
                                        </div>
                                        
                                    </div>
                                </div>
                    
                        
                        ';
                }

                ?>
            </div>
        </div>
    </section>

    <section id="gallerySection">
        <div class="container">
            <div class="row">
                <?php

                $sql = mysqli_query($conDB, "select * from gallery order by id DESC");

                if (mysqli_num_rows($sql) > 0) {
                    $name = $detail['name'];
                    while ($imgrow = mysqli_fetch_assoc($sql)) {
                        $img = FRONT_SITE_IMG . 'gallery/' . $imgrow['img'];
                        $id = $imgrow['id'];

                        echo '
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="imgContent"><img src="' . $img . '" alt="' . $name . ' image"/></div>
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
        <div class="container">
            <div class="content">
                <div class="left-side">
                    <div class="address details">
                        <i class="fas fa-map-marker-alt"></i>
                        <div class="topic">Address</div>
                        <div class="text-one">Surkhet, NP12</div>
                        <div class="text-two">Birendranagar 06</div>
                    </div>
                    <div class="phone details">
                        <i class="fas fa-phone-alt"></i>
                        <div class="topic">Phone</div>
                        <div class="text-one">+0098 9893 5647</div>
                        <div class="text-two">+0096 3434 5678</div>
                    </div>
                    <div class="email details">
                        <i class="fas fa-envelope"></i>
                        <div class="topic">Email</div>
                        <div class="text-one">codinglab@gmail.com</div>
                        <div class="text-two">info.codinglab@gmail.com</div>
                    </div>
                </div>
                <div class="right-side">
                    <div class="topic-text">Send us a message</div>
                    <p>If you have any work from me or any types of quries related to my tutorial, you can send me message from here. It's my pleasure to help you.</p>
                    <form action="#">
                        <div class="input-box">
                            <input type="text" placeholder="Enter your name">
                        </div>
                        <div class="input-box">
                            <input type="text" placeholder="Enter your email">
                        </div>
                        <div class="input-box message-box">

                        </div>
                        <div class="button">
                            <input type="button" value="Send Now">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</main>