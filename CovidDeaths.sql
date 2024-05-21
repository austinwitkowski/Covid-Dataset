select location, date, total_cases, new_cases, total_deaths, population
from CovidProject.dbo.CovidDeaths
order by 1,2

-- looking at Total Cases vs Total Deaths
-- shows likelihood of dying if you contract covid in your country

select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
from CovidProject.dbo.CovidDeaths
--where location like '%states%'
order by 1,2


-- Looking at Total Cases vs Population
-- Shows what percentage of population got Covid

select location, date, total_cases, population, (total_cases/population)*100 as PercentPopulationInfected
from CovidProject.dbo.CovidDeaths
--where location like '%states%'
order by 1,2


-- Looking at Countries with Highest Infection Rate compared to Population

select location, population, Max(total_cases) as HighestInfectionCount, Max((total_cases/population))*100 as PercentPopulationInfected
from CovidDeaths
--where location like '%states%'
Group by Location, Population
order by PercentPopulationInfected desc


-- Showing Countries with Highest Death Count per Population 

select location, MAX(total_deaths) as TotalDeathCount
from CovidDeaths
--where location like '%states%'
Where continent is not null
Group by Location
order by TotalDeathCount desc


-- Showing Total Deaths by Continent

select continent, MAX(total_deaths) as TotalDeathCount
from CovidDeaths
--where location like '%states%'
Where continent is not null
Group by continent
order by TotalDeathCount desc


-- Global Numbers

select date, Sum(new_cases) as total_cases, Sum(new_deaths) as total_deaths, SUM(new_deaths)/SUM(new_cases)*100 as DeathPercentage 
From CovidDeaths
Where continent is not null
group by date
order by 1,2

-- Looking at Total Population vs Vaccinations

select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, sum(cast(vac.new_vaccinations as float)) over (partition by dea.location order by dea.location, dea.date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
from CovidProject.dbo.CovidDeaths dea
Join CovidProject.dbo.CovidVaccinations vac
	ON dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
order by 2,3
