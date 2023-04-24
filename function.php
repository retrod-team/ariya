<?php

    $imgPath = FRONT_SITE_IMG;
    $site = FRONT_SITE.'/';

    $detail =[
        'name'=> hotelDetail()['name'],
        'site'=> FRONT_SITE.'/',
        'beLink'=> FRONT_BOOKING_SITE.'/',
        'email'=> hotelDetail()['email'],
        'phone'=> hotelDetail()['primaryphone'],
        'location'=> hotelDetail()['address'],
        'locationLink'=> 'https://goo.gl/maps/mzvCgYjtrjrgdv9dA',
        'mapIfrem'=> '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3742.554569506173!2d85.84225231539511!3d20.27730001838023!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a19a75416ff8e59%3A0x3a00b58dab4bbdc5!2sThe%20New%20Marrion!5e0!3m2!1sen!2sin!4v1679727801342!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>',
        'fbLink'=> hotelDetail()['fbLink'],
        'twLink'=> hotelDetail()['inLink'],
        'inLink'=> hotelDetail()['twLink'],
        'hotelDes'=> hotelDetail()['description'],
    ];

    function phoneNumFormatting($input){    
        $output = substr($input, -10, -6) . "-" . substr($input, -6, -3) . "-" . substr($input, -3); 
        return $output;
    }
    
    function numFor($n,$size=3){
        $numSize = strlen($n);
        if($size == 2){
            if($numSize == 1){
                $data = '0'.$n;
            }else{
                $data = $n;
            }
        }
    
        if($size == 3){
            if($numSize == 1){
                $data = '00'.$n;
            }elseif($numSize == 2){
                $data = '0'.$n;
            }else{
                $data = $n;
            }
        }
    
        return $data;
    }

    function roomArryGen($limit){
        global $conDB;
        $sql = mysqli_query($conDB, "select room.*,room_detail.id as rdid from room,room_detail where pId='0' and room.id=room_detail.room_id group by(room.id) ORDER BY `room_detail`.`price` asc");
        $roomArray = array();
        if(mysqli_num_rows($sql) > 0){
            while($row = mysqli_fetch_assoc($sql)){       
                $id = $row['id'];
                $header = $row['header'];
                $bedtype = $row['bedtype'];
                $noAdult = $row['noAdult'];
                $mrp = $row['mrp'];
                $area = $row['area'];
                $bed = $row['bed'];
                $bathroom = $row['bathroom'];
                $slug = $row['slug'];
                $description = $row['description'];

                $nAdult = $row['noAdult'];                            
                $price = getRoomPriceById($row['id'], $row['rdid'] , $nAdult, date('Y-m-d'));
                
                $img = array();
                foreach(getImageById($id) as $key=>$imgList){
                    $img[] = FRONT_SITE_ROOM_IMG.$imgList;
                }

                $url = FRONT_SITE."/room/$slug" ;
                $aminities = array();
                $am_sql = mysqli_query($conDB, "select * from room_amenities where room_id = '{$id}'");
                if(mysqli_num_rows($am_sql)>0){
                    while($am_row= mysqli_fetch_assoc($am_sql)){
                        $ame = getAmenitieById($am_row['amenitie_id']);
                        $aminities[] = $ame;
                    }
                }
                

                $roomArray[] = [
                        'img'=> $img,
                        'slug'=>$slug,
                        'name'=>$header,
                        'area'=>$area,
                        'bed'=>$bed,
                        'bathroom'=>$bathroom,
                        'price'=>$price,
                        'link'=>$url,
                        'mrp'=>$mrp,
                        'desc'=>$description,
                        'aminities'=>$aminities,
                    ]
                ;
                
            }
        }

        return $roomArray;
    }

    function roomSection($limit=4){
        global $detail;
        $num = 0;
        $oddBlock = '';
        $evenBlock = '';
        $html = '';
        foreach(roomArryGen($limit) as $val){
            $num ++;
            $img = $val['img'];
            $name = $val['name'];
            $area = $val['area'];
            $bed = $val['bed'];
            $bathroom = $val['bathroom'];
            $price = $val['price'];
            $link = $val['link'];
            $beLink = $detail['beLink'];
            $imgSlide = '';

            foreach($img as $imgVal){
                $imgSlide .= '<img src="'.$imgVal.'" alt="">';
            }

            $html .= '
                <div class="col-md-4 col-sm-12">
                    <div class="room-item">
                        <div class="room-img">
                            <div class="owl-carousel owl-theme roomImgSlider">
                                '.$imgSlide.'
                            </div>
                            
                        </div>
                        <div class="room-content">
                            <div class="headerText"><h2><a href="'.$link.'">'.$name.'</a></h2></div>
                            <ul>
                                <li><i class="fi flaticon-expand-arrows"></i>'.$area.' sqm</li>
                                <li><i class="fi flaticon-bed"></i>'.$bed.' Bed</li>
                                <li><i class="fi flaticon-bathtub"></i>'.$bathroom.' Bathroom</li>
                            </ul>
                            <div class="bottomArea">
                                <h3><span>₹ </span>'.$price.' <span>/ Night</span></h3>
                                <a href="'.$beLink.'" class="simpleBtn"><div class="text"><span>Book Now</span><span>Book Now</span></div></a>
                            </div>
                        </div>
                    </div>
                </div>
            ';

        }

        return $html;


    }


    
                                            
    $heroSecArray=array();
    foreach(getSlider('',1) as $slideList){
        
        $id = $slideList['id'];
        $title = $slideList['title'];
        $subtitle = $slideList['subtitle'];
        $img = FRONT_SITE_HERO_IMG.$slideList['img'];
        $status = $slideList['status'];
        
        $deleteUrl = FRONT_BOOKING_SITE."/admin/hero-section.php?remove=$id";
        $heroSecArray[] = [
                'img'=>$img,
                'title'=>$title,
                'paragraph'=>$subtitle,
                'target'=>"slide$id"
        ];
    }

    $resHeroSecArray=array();
    foreach(getSlider('',3) as $slideList){
        
        $id = $slideList['id'];
        $title = $slideList['title'];
        $subtitle = $slideList['subtitle'];
        $img = FRONT_SITE_HERO_IMG.$slideList['img'];
        $status = $slideList['status'];
        
        $deleteUrl = FRONT_BOOKING_SITE."/admin/hero-section.php?remove=$id";
        $resHeroSecArray[] = [
                'img'=>$img,
                'title'=>$title,
                'paragraph'=>$subtitle,
                'target'=>"slide$id"
        ];
    }  

    $aminitySection = [
        [
            'name'=>'Free parking',
            'desc'=>'Provide the parking the hotel for the private use of guests.',
            'url'=>'javascript:void(0)',
            'icon'=> ""
        ],
        [
            'name'=>'Complimentary Buffet Breakfast',
            'desc'=>'We have a complimentary breakfast buffet has a lot of tasty dishes available from 7 to 10 am.',
            'url'=>'javascript:void(0)',
            'icon'=> ""
        ],
        [
            'name'=>'WiFi And Broadbandb Internet',
            'desc'=>'We provide Internet Services for secure wired & wireless Wi-Fi to our guests.',
            'url'=>'javascript:void(0)',
            'icon'=> ""
        ],
        [
            'name'=>'In House Laundry Facility',
            'desc'=>'Every night, massive loads of dirty towels, sheets, tablecloths, uniforms and other laundry is produced, to provide people with wash & clean laundry.',
            'url'=>'javascript:void(0)',
            'icon'=> ""
        ],
        [
            'name'=>'Station Pick-up And Drop',
            'desc'=>"The Travel desk / Concierge arrange the pick up and drop for their hotel's guests from their station or to their station.",
            'url'=>'javascript:void(0)',
            'icon'=> ""
        ],
        [
            'name'=>'In-House Mini Bar',
            'desc'=>'A mini-bar consists of a refrigerator packed with snacks and drinks. A basic mini-bar is stocked with alcoholic drinks, soda, and snack foods.',
            'url'=>'javascript:void(0)',
            'icon'=> ""
        ]
    ];

    $package = [
        [
            'name'=>'BEST OF CHANDIPUR & BHITARAKANIKA TOUR',
            'price'=>'4,999.00',
            'duration'=>'2/3',
            'persion'=>'10',
            'img'=>'',
            'url'=>''
        ],
        [
            'name'=>'BEST OF CHANDIPUR & BHITARAKANIKA TOUR',
            'price'=>'4,999.00',
            'duration'=>'2/3',
            'persion'=>'10',
            'img'=>'',
            'url'=>''
        ],
        [
            'name'=>'BEST OF CHANDIPUR & BHITARAKANIKA TOUR',
            'price'=>'4,999.00',
            'duration'=>'2/3',
            'persion'=>'10',
            'img'=>'',
            'url'=>''
        ],
    ];





?>