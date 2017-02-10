<template>
  <div class="page">
    <div class="banner">
      <h1 class="banner-head">
        Limitless project management is finally here
      </h1>
    </div>

    <div class="main-content" data-aos="fade-down">
      <div class="intro pure-group">
        <h2>We believe in freedom</h2>
        <p>And we are fed up with the arbitrary limitations of other tools that only inhibit our productivity</p>
        <p>That is why we designed Hone to be the most flexible project management system <b>in the world</b></p>
        <ul>
          <li>Each unit of work can have an <b>unlimited</b> number of parent and child units</li>
          <li>Easily configure customizable schemas to reflect your business' workflow</li>
          <li>Self host your own instance for <b>FREE</b></li>
        </ul>
      </div>
      <div class="pricing-tables pure-g">
        <div class="pure-u-1 pure-u-md-1-3">
          <div class="pricing-table pricing-table-free">
            <div class="pricing-table-header">
              <h2>Personal</h2>

              <span class="pricing-table-price">
                $7 <span>per month</span>
              </span>
            </div>

            <ul class="pricing-table-list">
              <li>Free setup</li>
              <li>Custom sub-domain</li>
              <li>Standard customer support</li>
              <li>3 projects</li>
              <li>1 board for each project</li>
              <li>5 users</li>
              <li>Regular backups</li>
              <li>Unlimited bandwidth</li>
            </ul>

            <button class="button-choose pure-button">Choose</button>
          </div>
        </div>

        <div class="pure-u-1 pure-u-md-1-3">
          <div class="pricing-table pricing-table-biz pricing-table-selected">
            <div class="pricing-table-header">
              <h2>Small Business</h2>

              <span class="pricing-table-price">
                $50 <span>per month</span>
              </span>
            </div>

            <ul class="pricing-table-list">
              <li>Free setup</li>
              <li>Use your own domain</li>
              <li>Standard customer support</li>
              <li>10 projects</li>
              <li>5 board under each project</li>
              <li>25 users</li>
              <li>Regular backups</li>
              <li>Unlimited bandwidth</li>
            </ul>

            <button class="button-choose pure-button">Choose</button>
          </div>
        </div>

        <div class="pure-u-1 pure-u-md-1-3">
          <div class="pricing-table pricing-table-enterprise">
            <div class="pricing-table-header">
              <h2>Enterprise</h2>

              <span class="pricing-table-price">
                $250 <span>per month</span>
              </span>
            </div>

            <ul class="pricing-table-list">
              <li>Free setup</li>
              <li>Use your own domain</li>
              <li>Premium customer support</li>
              <li>Unlimited projects</li>
              <li>Unlimited boards</li>
              <li>Unlimited users</li>
              <li>Regular backups</li>
              <li>Unlimited bandwidth</li>
            </ul>

            <button class="button-choose pure-button">Choose</button>
          </div>
        </div>
      </div> <!-- end pricing-tables -->

      <div class="information pure-g">
        <div class="pure-u-1 pure-u-md-1-2">
          <div class="main-box">
            <h3 class="information-head">Get started today</h3>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.
            </p>
          </div>
        </div>

        <div class="pure-u-1 pure-u-md-1-2">
          <div class="main-box">
            <h3 class="information-head">Pay monthly or annually</h3>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamco laboris nisi ut aliquip ex ea commodo
              consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse.
            </p>
          </div>
        </div>

        <div class="pure-u-1 pure-u-md-1-2">
          <div class="main-box">
            <h3 class="information-head">24/7 customer support</h3>
            <p>
              Cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </p>
          </div>
        </div>

        <div class="pure-u-1 pure-u-md-1-2">
          <div class="main-box">
            <h3 class="information-head">Cancel your plan anytime</h3>
            <p>
              Duis aute irure dolor in reprehenderit in voluptate vtelit esse
              cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
          </div>
        </div>
      </div> <!-- end information -->
    </div> <!-- end main-content -->

    <div class="footer main-box">
      <p>
        <a href="#">Try now</a> for 14 days. No credit card required. Header image courtesy of <a href='http://unsplash.com/'>Unsplash</a>.
      </p>
    </div>
  </div>
</template>

<script>
// import Counter from '../components/Counter'
// import Layout from '../components/Layout'
import AOS from 'aos'

console.log('derp aos?', AOS)

AOS.init({ duration: 2000 })

export default {
  components: {
    // Counter
    // Layout
  }
}
</script>

<style>
h2, h3 {
  letter-spacing: 0.25em;
  text-transform: uppercase;
  font-weight: 600;
}

p {
  line-height: 1.6em;
}

.main-content {
  margin: 0 auto;
}

.main-box {
  /*padding: 0.5em 2em;*/
}
.pure-menu {
  box-shadow: 0 1px 1px rgba(0,0,0, 0.10);
}

.pure-menu-link {
  padding: .5em .7em;
}

/*#layout header {
  width: 100%;
}
*/
/*#layout.active #header {
  left: 0;
  width: 150px;
}*/

#layout {
  padding-left: 0; /* left col width "#menu" */
  left: 0;
  background: #261E25;
}

#menu {
  left: 0;
  margin-left: 0;
  background: none !important; /* FIXME: figure out how to scope this stuff better */
  overflow-y: hidden !important; /* FIXME: figure out how to scope this stuff better */
}

#menu .logo {
  float: left;
  margin-right: 0;
}

.menu-link {
  left: 0;
}

#layout.active .menu-link {
  left: 0;
}

/*
 * -- BANNER --
 * The top banner with the headings. By using a combination
 * of `display: table;` and `display: table-cell;`, we can
 * vertically center the text.
 */

.banner {
  /*background: transparent url('http://24.media.tumblr.com/ccb268832580ac12951828a1c179de69/tumblr_mo2xbk8JUK1st5lhmo1_1280.jpg') 0 0 no-repeat fixed;*/
  /*background: url('https://images.unsplash.com/photo-1482385916434-814664df9c5b') 0 0 no-repeat fixed;*/
  /*background: url('https://images.unsplash.com/photo-1461782296610-c552d61b149a?dpr=3.5') 0 0 no-repeat fixed;*/
  /*background: url('https://images.unsplash.com/photo-1482957937087-5e83a32478c9?dpr=3.5&auto=format')no-repeat fixed;*/
  /*background: url('https://images.unsplash.com/photo-1446776877081-d282a0f896e2?dpr=3.5') 0 0 no-repeat fixed;*/
  background: url('https://images.unsplash.com/photo-1444424050109-31f057e1e858?dpr=3.5');
  background-position-y: 50%;
  text-align: center;
  background-size: cover;
/*  filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://24.media.tumblr.com/ccb268832580ac12951828a1c179de69/tumblr_mo2xbk8JUK1st5lhmo1_1280.jpg', sizingMethod='scale');*/

  height: 200px;
  width: 100%;
  margin-bottom: 3em;
  display: table;
}

.banner-head {
  display: table-cell;
  vertical-align: middle;
  margin-bottom: 0;
  font-size: 2em;
  color: white;
  font-weight: 500;
  text-shadow: 0 1px 1px black;
}

.intro {
  text-align: center;
  font-size: 1.5em;
}

.intro > * {
  margin-top: 4em;
  margin-bottom: 4em;
}

.pricing-tables,
.information,
.intro {
  max-width: 980px;
  margin: 0 auto;
}

.pricing-tables {
  margin-bottom: 3.125em;
  text-align: center;
}

/*
 * -- PRICING TABLE  --
 * Every pricing table has the .pricing-table class
 */
.pricing-table {
  border: 1px solid #ddd;
  margin: 0 0.5em 2em;
  padding: 0 0 3em;
}

/*
 * -- PRICING TABLE HEADER COLORS --
 * Choose a different color based on the type of pricing table.
 */
.pricing-table-free .pricing-table-header {
  /*background: #519251;*/
  background: #a4c8dd;
}

.pricing-table-biz .pricing-table-header {
  /*background: #2c4985;*/
  background: #5a839b;
}

.pricing-table-enterprise .pricing-table-header {
  background: #456272;
}

/*
 * -- PRICING TABLE HEADER --
 * By default, a header is black/white, and has some styles for its <h2> name.
 */
.pricing-table-header {
  background: #111;
  color: #fff;
}

.pricing-table-header h2 {
  margin: 0;
  padding-top: 2em;
  font-size: 1em;
  font-weight: normal;
}

/*
 * -- PRICING TABLE PRICE --
 * Styles for the price and the corresponding <span>per month</span>
 */
.pricing-table-price {
  font-size: 6em;
  margin: 0.2em 0 0;
  font-weight: 100;
}

.pricing-table-price span {
  display: block;
  text-transform: uppercase;
  font-size: 0.2em;
  padding-bottom: 2em;
  font-weight: 400;
  color: rgba(255, 255, 255, 0.5);
  *color: #fff;
}

/*
 * -- PRICING TABLE LIST --
 * Each pricing table has a <ul> which is denoted by the .pricing-table-list class
 */
.pricing-table-list {
  list-style-type: none;
  margin: 0;
  padding: 0;
  text-align: center;
}

/*
 * -- PRICING TABLE LIST ELEMENTS --
 * Styles for the individual list elements within each pricing table
 */
.pricing-table-list li {
  padding: 0.8em 0;
  background: #f7f7f7;
  border-bottom: 1px solid #e7e7e7;
}

/*
 * -- PRICING TABLE BUTTON --
 * Styles for the "Choose" button at the bottom of a pricing table.
 * This inherits from Pure Button.
 */
.button-choose {
  border: 1px solid #ccc;
  background: #fff;
  color: #333;
  border-radius: 2em;
  font-weight: bold;
  position: relative;
  bottom: -1.5em;
}

.information-head {
  color: black;
  font-weight: 500;
}

.footer {
  background: #111;
  color: #888;
  text-align: center;
}

.footer a {
  color: #ddd;
}

/*
 * -- TABLET MEDIA QUERIES --
 * On tablets, we want to slightly adjust the size of the banner
 * text and add some vertical space between the various pricing tables
 */
@media (min-width: 767px) {
  .banner-head {
    font-size: 4em;
  }
  .pricing-table {
    margin-bottom: 0;
  }
}

/*
 * -- PHONE MEDIA QUERIES --
 * On phones, we want to reduce the height and font-size of the banner further
 */
@media (min-width: 480px) {
  .banner {
    /*height: 800px;*/
    height: 50%;
  }
  .banner-head {
    font-size: 3em;
  }
}
</style>
