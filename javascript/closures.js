/*
JavaScript closures are useful for maintaining state, like count variable, while executing the
inner function, which increments the count variable.
*/

function counter() {
  let count = 0;

  function increment() {
    let incrementedCount = ++count;
    return incrementedCount;
  }

  return increment;
}

const counter1 = counter();
const counter2 = counter();

console.log(counter1()); // 1
console.log(counter2()); // 1
console.log(counter1()); // 2

// It can also help on caching

function users() {
  let cache = {};

  function getUser(id) {
    if (cache[id]) {
      console.log(`Get user from cache. id: ${id}`)
      return cache[id];
    }

    // In practice, finding the user may be slow
    return new Promise(resolve => {
      setTimeout(() => {
        const user = {id: id, name: "Rubynho", loves: "Elixir"}
        cache[id] = user

        resolve(user)
      }, 2000)
    })
  }

  return getUser;
}

const findUser = users();

findUser("1").then(user => console.log(user))
findUser("2").then(user => console.log(user))
findUser("1").then(user => console.log(user))
