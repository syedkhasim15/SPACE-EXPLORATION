<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <style>

      body{
        background-color: #061028;
        color: white;
      }

      input[type="number"] {
        width: 190px;
        height: 25px;
        font-size: 16px;
        padding: 5px;
        border-radius: 10px;
        border: 2px solid #ccc;
      }

      input[type="number"]:focus {
        outline: none;
        border-color: #00bcd4;
        box-shadow: 0 0 5px #00bcd4;
      }

      input[type="number"]::-webkit-inner-spin-button,
      input[type="number"]::-webkit-outer-spin-button {
        margin: 0;
      }

      input[type="number"]::-webkit-slider-thumb {
        -webkit-appearance: none;
        width: 20px;
        height: 20px;
        background: #00bcd4;
        border-radius: 50%;
        cursor: pointer;
      }

      input[type="number"]::-moz-range-thumb {
        width: 20px;
        height: 20px;
        background: #00bcd4;
        border-radius: 50%;
        cursor: pointer;
      }

      .incon select {
        border-radius: 10px;
        height: 40px;
        width: 190px;
        appearance: none;
        -webkit-appearance: none;
        -moz-appearance: none;
        background-color: #fff;
        border: 2px solid #ccc;
        padding: 8px 12px;
        cursor: pointer;
      }

      .incon label {
        margin-top: 2%;
        display: block;
        margin-bottom: 8px;
      }

      .incon select:focus {
        outline: none;
        border-color: #4d90fe;
        box-shadow: 0 0 4px rgba(77, 144, 254, 0.6);
      }

      input[type="text"] {
        width: 180px;
        height: 35px;
        font-size: 18px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 10px;
        box-sizing: border-box;
      }

      input[type="text"]:focus {
        outline: none;
        border-color: #4d90fe;
        box-shadow: 0 0 4px rgba(77, 144, 254, 0.6);
      }

      .con {
        margin-top: 80px;
        display: flex;
        justify-content: center;
        padding: 40px;
      }

      form{
        background-color: #200b52a3;
        border-radius: 20px;
        padding: 20px;
        box-shadow: rgba(103, 98, 98, 0.35) 0px 5px 15px;
        
      }

      .incon {
        width: 350px;
        margin-bottom: 20px;
        padding: 20px;
        display: flex;
        justify-content: center;
      }

      .incon label,
      input,
      select {
        width: 50%;
      }

      .submit-btn {
        display: inline-block;
        margin-top: 10px;
        padding: 15px 30px;
        font-size: 16px;
        font-weight: bold;
        color: #fff;
        text-align: center;
        text-decoration: none;
        background-color: #704cafab;
        border-radius: 4px;
        cursor: pointer;
        overflow: hidden;
      }

      .submit-btn:after {
        content: "";
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%) scale(0);
        background-color: rgba(255, 255, 255, 0.4);
        width: 30px;
        height: 30px;
        border-radius: 50%;
        opacity: 0;
        transition: transform 0.3s ease, opacity 0.3s ease;
      }

      .submit-btn:hover:after {
        transform: translate(-50%, -50%) scale(3);
        opacity: 1;
      }
    </style>
  </head>

  <body>
    <div class="con">
      <form  action="update" method="post">
        <div class="incon">
          <label for="quantity">Select Id:</label>
          <input type="number" placeholder="select id" id="quantity" name="sno" min="1" max="20" />
        </div>

        <div class="incon">
          <label id="drop" for="select-option">Select an option:</label>
          <select id="select-option" name="select-option">
            <option value="s_name">s_name</option>
            <option value="matter">matter</option>
            <option value="category">category</option>
            <option value="image">image</option>
            <option value="data">data</option>
          </select>
        </div>

        <div class="incon">
          <label for="name">Column:</label>
          <input type="text" id="name" name="name" placeholder="value"/>
        </div>

        <div class="incon">
          <button type="submit" class="submit-btn">Submit</button>
        </div>
      </form>
    </div>
  </body>
</html>
