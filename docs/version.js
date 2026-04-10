const modrinthAPI = 'https://api.modrinth.com/v2/project/????????';
const githubAPI = 'https://api.github.com/repos/YoavTC/upgradeable-spawners/releases/latest';

const modrinthVersionLabel = document.getElementById('modrinth-version-label');
const githubVersionLabel = document.getElementById('github-version-label');

async function fetchJSON(url) {
	const response = await fetch(url);
	if (!response.ok) {
		throw new Error(`Request failed: ${response.status}`);
	}

	return response.json();
}

async function loadModrinthVersion() {
	if (!modrinthVersionLabel) {
		return;
	}

	try {
		const data = await fetchJSON(modrinthAPI);
		const gameVersions = data?.game_versions;

		if (Array.isArray(gameVersions) && gameVersions.length > 0) {
			modrinthVersionLabel.textContent = gameVersions[gameVersions.length - 1];
			return;
		}

		modrinthVersionLabel.textContent = 'Unknown';
	} catch (error) {
		modrinthVersionLabel.textContent = 'Unavailable';
	}
}

async function loadGithubVersion() {
	if (!githubVersionLabel) {
		return;
	}

	try {
		const data = await fetchJSON(githubAPI);
		githubVersionLabel.textContent = data?.tag_name || 'Unknown';
	} catch (error) {
		githubVersionLabel.textContent = 'Unavailable';
	}
}

loadModrinthVersion();
loadGithubVersion();