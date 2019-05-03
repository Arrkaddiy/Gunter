<#import "parts/foundation.ftl" as found>
<#include "parts/security.ftl">

<@found.page>
<h4>Привет, ${name}!</h4>
<h6>Это простой полигон для тренировки</h6>
<div id="carouselGuntherIndicators" class="carousel slide carousel-fade mx-auto" data-ride="carousel" style="width: 40rem">
    <ol class="carousel-indicators">
        <li data-target="#carouselGuntherIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselGuntherIndicators" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="/static/navbar/Stars.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="/static/navbar/Text.jpg" alt="Second slide">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselGuntherIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselGuntherIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
</@found.page>
