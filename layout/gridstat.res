/**
 * TODO read https://css-tricks.com/linearly-scale-font-size-with-css-clamp-based-on-the-viewport/
 * TODO review https://css-tricks.com/linearly-scale-font-size-with-css-clamp-based-on-the-viewport/
 * TODO aria for status messages
 * TODO describe template data
 * TODO rename out_of_range to within_range
 */
html body {
  margin: 8px;
  /*font-family: 'Inter', system-ui, arial;*/
  font-family: system-ui, arial;
  /*color: #FFFFFF;*/
  /*background: rgba(20, 24, 23, 1);*/
}

.hero {
  /*background: rgba(20, 24, 23, 1);*/
}

.hero > .form {
  margin: 0px;
  padding: 7px;
  border: 1px solid #2C2E2D;
  border-radius: 8px;
  /*background-color: #1E201F;*/
}

h1 {
  margin: 0;
}

h3 {
  margin: 0;
  padding: 7px;
}

input {
  width: 0; /* allow input[type=number] be less than default in chrome */
  min-width: clamp(80px, 50%, 200px); /* 0 fix input[type=number] behaviour in Firefox */
  margin: 0px;
  padding: 4px;
  /*font-family: 'Inter', system-ui, arial;*/
  font-family: system-ui, arial;
  font-size: 16px; /* if font-size less than 16px iphone 12 mini will scale page up to presumably make font-size 16px */
  /*color: #FFFFFF;*/
  text-align: right;
  border: 1px solid #4F5150;
  border-radius: 4px;
  /*background-color: #1E201F;*/
}

/*input[type="date"][disabled] {
  color: red;
}*/

/* TODO make this block safari specific */
input[type="date"] {
  -webkit-appearance: initial;
  height: 30px; 
  color: black;
  background-color: white;
}

fieldset {
  margin: 0px;
  border-radius: 4px;
  border: 1px solid gray;
}

legend {
  display: block;
  margin: 0px;
  padding: 7px;
}

label {
  display: inline-block; /* https://stackoverflow.com/questions/15929141/margin-top-not-working-with-label */
  /*margin: 4px 0px;*/
  /*padding: 4px;*/
}

input[type=number] {
  text-align: right;
}

select {
  min-width: clamp(80px, 50%, 200px);
  margin: 0px;
  /*font-family: 'Inter', system-ui, arial;*/
  font-family: system-ui, arial;
  font-size: 16px;
  color: black;
  text-align: right;
  padding: 4px 4px 4px 120px;
  border-radius: 4px;
  border: 1px solid gray;
  background-color: white;
  /*-webkit-appearance: initial;*/
  -webkit-appearance: none;
}

button {
  /*-webkit-appearance: none;*/
  padding: 8px 20px;
  /*font-family: 'Inter', system-ui, arial;*/
  font-family: system-ui, arial;
  font-size: 16px;
  font-weight: 500;
  color: white;
  border: 0;
  border-radius: 4px;
  background-color: #26A17B;
}

button:hover {
  background-color: #2dbf92;
}

button:active {
  background-color: #218e6c;
}

img {
  width: 100%;
  /*margin: 0px;
  padding: 0px;*/
}

table, th, td {
  border-spacing: 0px;
}

table {
  width: 100%;
  /*margin-top: 40px;
  margin-bottom: 20px;*/
  border: 1px solid rgba(44, 46, 45, 1);
  border-radius: 8px;
}

thead {
}

.btlr {
  border-top-left-radius: 7px;
}

.btrr {
  border-top-right-radius: 7px;
}

th {
  font-weight: 500;
  text-align: left;
  padding: 10px;
  border-bottom: 1px solid rgba(44, 46, 45, 1);
  /*background: rgba(30, 32, 31, 1);*/
}

td {
  padding: 10px;
  font-weight: 400;
}

ul {
  list-style: none;
}

li {
  display: inline;
}

hr {
  margin: 7px -7px;
  border: 0.5px solid black;
}

.green, .buy {
  color: #00A000;
}

.red, .sell {
  color: #B80000;
}

.profit {
  /*margin-bottom: 20px;*/
  text-align: right;
}

.footer {
  /*margin: 6.5px 0;*/
  text-align: right;
}


.title {
  display: flex;
  align-items: center;
}

.B {
  display: none;
}

.pass {
  display: inline-block;
  /*margin: 2px 0px;*/
  color: green;
}

.na {
  display: inline-block;
  /*margin: 2px 0px;*/
  color: gray;
}

.fail {
  display: inline-block;
  /*margin: 2px 0px;*/
  color: red;
}

.profit {
  /*margin: -16px 0 16px 0;*/
}

/* https://stackoverflow.com/a/54328188 */
.table {
  /*overflow-x: scroll;
  -ms-overflow-style: none;
  overflow: -moz-scrollbars-none;
  scrollbar-width: none;*/
}

.table::-webkit-scrollbar {
    display: none;  /* Safari and Chrome */
}

@supports (display: grid) {

  h3 {
    /*margin: 2px 0px 2px 0px;*/
  }

  .footer > hr {
    /*margin: 14px -12px 14px -12px;*/
    border: 0.5px solid black;
  }

  fieldset {
    padding: 0px 0px 2px 0px;
    border: 0;
  }

  legend {
    /*margin: 4px 0px 2px 0px;*/
    font-weight: 500;
  }

  input {
    width: 100%;
  }

  select {
    width: 100%;
  }

  button {
    width: 100%;
  }

  .required-fields {
    display: none;
  }

  .fail > code, .na > code, .pass > code {
    display: none;
  }

  .date-range {
    /*display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 12px;*/
  }

  .from, .to, .lower, .upper, .mode, .grids, .inv {
    margin: 0px;
    padding: 5px 7px;
    position: relative;
    /*margin: 10px 0px 0px 0px;*/
    min-width: 200px;
  }

  /*.from .label, .to .label {
    position: absolute;
    inset: 0;
    padding: 15px;
    display: flex;
    align-items: center;
    pointer-events: none;
  }*/

  .label {
    position: absolute;
    inset: 0;
    padding: 5px 7px;
    display: flex;
    align-items: center;
    pointer-events: none;
  }

  /*.lower, .upper {
    position: relative;
    min-width: 200px;
    margin: 10px 0px 0px 0px;
  }*/

  .lower .label, .upper .label {
    position: absolute;
    inset: 0;
    padding: 8px;
    display: flex;
    align-items: center;
    pointer-events: none;
  }

  .lower .name, .upper .name {
    width: 50px; 
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    z-index: 1;
  }

  .spacer {
    flex-grow: 1;
    z-index: 0;
  }

  .usdt {
    display: block;
    width: 46px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    z-index: 1;
  }

  .bracket {
    display: none;
  }

  .asterisk {
    display: none;
  }

  .B {
    display: block;
    width: 18px;
    height: 18px;
    /*margin: 0px 4px 0px 0px;*/
    background-image: url(/btc.svg);
    background-size: 100% 100%;
    z-index: 1;
  }

  .T {
    background-image: url(/usdt.svg);
    width: 18px;
    height: 18px;
    background-size: 100% 100%;
    z-index: 1;
  }

  #lower, #upper {
    padding: 7px 74px 7px 59px; /* 7px (2 + 46 + 18 + 7 + 1)px 7px (1 + 4 + 50 + 4)px */
  }

  .mode, .grids {
    position: relative;
    min-width: 200px;
    /*margin: 10px 0px 0px 0px;*/
  }

  .mode .label, .grids .label {
    position: absolute;
    inset: 0;
    padding: 7px 5px;
    display: flex;
    align-items: center;
    pointer-events: none;
  }

  @supports (-webkit-touch-callout: none) {
    /* CSS specific to iOS devices */ 
  }

  #mode, #grids {
    padding: 7px 7px 7px 59px; /* 7px 7px 7px (1 + 4 + 50 + 4)px */
  }

  .investment {
    position: relative;
    min-width: 200px;
    /*margin: 10px 0px 0px 0px;*/
  }

  .investment .label {
    position: absolute;
    inset: 0;
    padding: 8px;
    display: flex;
    align-items: center;
    pointer-events: none;
  }

  .investment .name {
    width: 62px; 
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    z-index: 1;
  }

  #investment {
    padding: 7px 74px 7px 71px; /* 7px (2 + 46 + 18 + 7 + 1)px 7px (1 + 4 + 62 + 4)px */
  }

  @media (min-width: 480px) {

    body {
      font-size: 12px;
    }

    h3 {
      font-size: 13.5px;
      font-weight: 500;
    }

    legend {
      font-size: 13.5px;
    }

    input {
      font-size: 12px;
    }

    select {
      font-size: 12px;
    }

    button {
      font-size: 13.5px;
    }

    .hero {
      display: grid;
      grid-template-columns: 1fr 320px;
      /*grid-auto-rows: minmax(3px, auto);*/
      gap: 12px;
    }

    table {
      /*margin-top: 0px;
      margin-bottom: 0px;*/
    }

    .hero > .text {
      grid-column: 1;
      grid-row: 1;
      color: green;
    }

    .hero > .form {
      grid-column: 2;
      grid-row: 1 / 4;
    }

    .lower, .upper {
      /*margin: 10px 0px;*/
    }

    .lower .name, .upper .name {
      width: 36px; 
    }

    .usdt {
      width: 36px;
    }

    .B {
      width: 16px;
      height: 16px;
      /*transform: translateY(-0.5px);*/
    }

    .T {
      width: 16px;
      height: 16px;
      /*transform: translateY(-0.5px);*/
    }

    #lower, #upper {
      padding: 7px 60px 7px 45px; /* 7px (36 + 16 + 7 + 1)px 7px (1 + 4 + 36 + 4)px */
    }

    .mode .name, .grids .name {
      width: 36px; 
    }

    #mode, #grids {
      padding: 7px 7px 7px 45px; /* 7px 7px 7px (1 + 4 + 36 + 4)px */
    }

    .investment .name {
      width: 48px; 
    }

    #investment {
      padding: 7px 60px 7px 57px; /* 7px (36 + 16 + 7 + 1)px 7px (1 + 4 + 48 + 4)px */
    }

    th {
      font-size: 13.50px;
    }

    td {
      font-size: 12px;
    }

  }

}