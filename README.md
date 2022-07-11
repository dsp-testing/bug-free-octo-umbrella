# README 

Setup the db 
```bash
rails db:create db:migrate db:seed
```

Ran a sample query
```bash
{
  shops(ids: [1]) {
    nodes {
      id
      items {
        nodes {
          id
          title
          shopId
        }
      }
    }
  }
}

```

