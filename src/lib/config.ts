import Medusa from "@medusajs/medusa-js"

// Defaults to standard port for Medusa server
export let MEDUSA_BACKEND_URL = "https://medusa.prixeo.com"

if (process.env.NEXT_PUBLIC_MEDUSA_BACKEND_URL) {
  MEDUSA_BACKEND_URL = process.env.NEXT_PUBLIC_MEDUSA_BACKEND_URL
}

export const medusaClient = new Medusa({
  baseUrl: MEDUSA_BACKEND_URL,
  maxRetries: 3,
})
