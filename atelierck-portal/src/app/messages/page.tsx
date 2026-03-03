export default function Page(){const hasOpenProject=true; return <main><h1>Messages</h1>{hasOpenProject?<p>Threads enabled.</p>:<p>Messaging disabled until an open project exists.</p>}</main>}
