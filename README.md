For each schema:

- Run `prisma db push`
- Run `prisma db pull`
- There should be a diff in the schema.

## Utility for verifying the URLs in the challenge spec.json

```bash
jq -r '.schemas | .[] | .url' schemas.json | xargs --max-lines=1 curl --no-progress-meter -o /dev/null -w '%{http_code}\n'
```
