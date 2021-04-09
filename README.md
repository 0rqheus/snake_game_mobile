# Snake game in flutter

This project is implementation of classic mobile game "Snake" using flutter framework.

## Components

The Game consists of 3 main parts: gamepad, playfield and snake. Also, there is a general component Game, where is happening main game cycle (food generation and movement)

<dl>
  <dt>Gamepad</dt>
  <dd>Implementation is just a one Column and two Rows, which contains four IconButtons with relative arrow icons.</dd>
  
  <dt>Playfield</dt>
  <dd>It is a List of Containers, each containing card with different color, depending on content (white - empty cell, red - food, green - snake).</dd>
  
  <dt>Snake</dt>
  <dd>This is a complex class that stores List of SnakeCells, rotation queue (List of RotationData) and movement logic (that is just update of each cell).</dd>
  
  <ul>
    <li>SnakeCell is a class that contains coordinates and current direction of the snake cell and also functions for position updating.</li>
    <li>RotationData is a data class which contains direction and time when it was created (to access next cells in iteration).</li>
  </ul>
</dl>

<div style="display:flex; justify-content: center">
  <img src="/screenshots/game.png" alt="start menu" height="450"/>
  <img src="/screenshots/loss.png" alt="start menu" height="450"/>
</div>
