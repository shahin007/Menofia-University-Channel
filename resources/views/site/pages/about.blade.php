@extends('site.layouts.master')

@section('title')
    {{app()->getLocale() == 'en' ? 'About Page' : 'من نحن'}}
@endsection

@section('slider')
    <div class="page-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="head-title">{{app()->getLocale() == 'en' ? 'About Page' : 'من نحن'}}</div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('content')
    <div class="page-content">
        <!-- Start Section
        ==========================================-->
        <section class="section-setting section-color">
            <div class="container">
                <div class="row">
                    <div class="about-inner col-md-12 col-sm-12">
                        <div class="head-title">
                            {{app()->getLocale() == 'en' ? 'General objectives' : 'الأهداف العامة'}}
                        </div>
                        <div class="info-text">
                            @if(app()->getLocale() == 'en')
                            The overall objective represents the final results to be achieved in the long run, often open-ended and not time-bound. It is not expressed in quantitative form, nor does it include a specific time frame for achieving it. The overall goals of the University are indicators of success to achieve its mission. In light of the vision and mission of the university
                            @else
                            يمثل الهدف العام النتائج النهائية التي يتعين تحقيقها على المدى الطويل ، وغالبًا ما تكون مفتوحة العضوية وليست محددة زمنياً. لا يتم التعبير عنها في شكل كمي ، ولا تتضمن إطارًا زمنيًا محددًا لتحقيق ذلك. الأهداف العامة للجامعة هي مؤشرات النجاح لتحقيق رسالتها. في ضوء رؤية ورسالة الجامعة
                            @endif
                        </div>
                        <ul class="dot-lists">
                            <li>
                                @if(app()->getLocale() == 'en')
                                1 - expansion of the institutions intended to open new scientific horizons in light of the knowledge economy and competitiveness.
@else
                                1- التوسع في المؤسسات التي تهدف إلى فتح آفاق علمية جديدة في ضوء اقتصاد المعرفة والقدرة التنافسية.
                                @endif
                            </li>
                            <li>
                                @if(app()->getLocale() == 'en')
                                2 - High prestige of the university in the system of higher education and gain the confidence of the community.
@else
                                2- مكانة الجامعة العالية في نظام التعليم العالي واكتساب ثقة المجتمع.
                                @endif
                            </li>
                            <li>
                                @if(app()->getLocale() == 'en')
                                3. Graduates of the spirit of the times and the requirements of the labor market.
@else
                                3. خريجو روح العصر ومتطلبات سوق العمل.
                                @endif
                            </li>
                            <li>
                                @if(app()->getLocale() == 'en')
                                4 - Member of the teaching staff with distinguished scientific and professional skills regionally and globally.
@else
                                4- عضو هيئة التدريس بالمهارات العلمية والمهنية المتميزة إقليميا وعالميا.
                                @endif
                            </li>
                            <li>
                                @if(app()->getLocale() == 'en')
                                5 - Advanced scientific research serves the economic and social development plans.
@else
                                5 - البحث العلمي المتقدم يخدم خطط التنمية الاقتصادية والاجتماعية.
                                @endif
                            </li>
                            <li>
                                @if(app()->getLocale() == 'en')
                                6. Develop and improve the exploitation of the financial and material resources of the University.
@else
                                6. تطوير وتحسين استغلال الموارد المالية والمادية للجامعة.
                                @endif
                            </li>
                            <li>
                                @if(app()->getLocale() == 'en')
                                7. Adequate organizational structure and efficient administrative system.
                                @else
                                7. الهيكل التنظيمي الكافي والنظام الإداري الفعال.
                                @endif
                            </li>
                        </ul>
                        <div class="head-title">
                            {{app()->getLocale() == 'en' ? 'Growth and Evolution' : 'النمو والتطور'}}
                        </div>
                        <div class="info-text">
                            @if(app()->getLocale() == 'en')
The University of Menoufia was established by law No. 93 of August 14, 1976, based in Shebein El Koum, to meet the increasing demand for higher education and to support the Egyptian universities and other higher education institutions in achieving their mission in the development of society through the provision of excellent educational, research and community services. . The law (93) stipulates in its second article that the University of Menoufia shall consist of the then affiliated colleges of the University of Tanta in Shebin El Koum and Menouf. Also issued on 25 November 1976, the Prime Minister's Decision No. (1142) to include the University of Menoufia only four colleges are:                            @else
تأسست جامعة المنوفية بموجب القانون رقم 93 المؤرخ 14 أغسطس 1976 ، ومقرها في شبين الكوم ، لتلبية الطلب المتزايد على التعليم العالي ولدعم الجامعات المصرية وغيرها من مؤسسات التعليم العالي في تحقيق رسالتها في تطوير المجتمع من خلال توفير الخدمات التعليمية والبحثية والمجتمعية الممتازة. . ينص القانون (93) في مادته الثانية على أن جامعة المنوفية تتألف من كليات جامعة طنطا في شبين الكوم ومنوف. صدر أيضًا في 25 نوفمبر 1976 ، قرار رئيس الوزراء رقم (1142) بإدراج جامعة المنوفية أربع كليات فقط هي:
                            @endif
                        </div>
                        <div class="info-text">
                            @if(app()->getLocale() == 'en')
                            Faculty of Agriculture - Faculty of Engineering - Faculty of Education - Faculty of Electronic Engineering
                            @else
كلية الزراعة - كلية الهندسة - كلية التربية - كلية الهندسة الالكترونية

                            @endif
                        </div>
                    </div>
                </div><!--End row-->
            </div><!--End Container-->
        </section><!-- End Section -->
    </div><!--End Page Content-->
@endsection