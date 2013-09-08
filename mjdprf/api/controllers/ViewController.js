/**
 * ViewController
 *
 * @module		:: Controller
 * @description	:: Contains logic for handling requests.
 */

module.exports = {

  /* e.g.
  sayHello: function (req, res) {
    res.send('hello world!');
  }
  */
  
  /**
   * /view/pessoa
   */ 
  pessoa: function (req,res) {

    // This will render the view: 
    // /Users/lhcezar/Projetos/mj-dprf/mjdprf/views/view/pessoa.jade
    res.view();

  }

};
