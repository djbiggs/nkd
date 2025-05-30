/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT  * from aaa where country not in (select countryid from X_DictionaryCountry)
--delete aaa from aaa inner join X_Location l on latitude=latitudewgs84 and longitude=longitudewgs84 where latitude<> '' and Longitude<>''
--delete from aaa where country not in (select countryid from X_DictionaryCountry)
--delete from aaa where latitude='' or longitude=''
--select * from aaa  a
--inner join aaa b on a.latitude=b.latitude and a.longitude=b.longitude and a.locid<>b.locid
--declare @dt datetime
--set @dt = getdate()
--insert into x_location(locationid, VersionUpdated, LocationTypeID, CountryID,postcode, DefaultLocationName,LatitudeWGS84,LongitudeWGS84)
--SELECT newid() lid, @dt updated, cast('AAA86085-9471-400B-BA7F-ED4BA756C9F7' as uniqueidentifier) locationtype, max(country) countryid,max(postalcode) postcode,max(city) city, latitude, longitude from aaa
--where city<>''
--group by latitude,longitude
----  SELECT
----   defaultlocationname,
----   AVG(mt)
----FROM
----(
----   SELECT
----      latitudewgs84*longitudewgs84 mt,
----	  defaultlocationname,
----      ROW_NUMBER() OVER (
----         PARTITION BY defaultlocationname, countryid 
----         ORDER BY latitudewgs84*longitudewgs84 ASC, defaultlocationname ASC) AS RowAsc,
----      ROW_NUMBER() OVER (
----         PARTITION BY defaultlocationname , countryid
----         ORDER BY latitudewgs84*longitudewgs84 DESC, defaultlocationname DESC) AS RowDesc
----   FROM X_Location
----) x
----WHERE 
----   RowAsc IN (RowDesc, RowDesc - 1, RowDesc + 1) and DefaultLocationName='jangrot'
----GROUP BY defaultlocationname
----ORDER BY DefaultLocationName;

/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT  *
--  FROM [NKD].[dbo].[X_Location] l1
--  inner join 
--  X_Location l2 on 

  
--   where DefaultLocationName='sydney'

--update X_location set VersionCertainty= 10 where locationid in (
--select locationid from (
--select 
--ROW_NUMBER() OVER (
--         PARTITION BY defaultlocationname, countryid 
--         ORDER BY dist asc) AS RowAsc,
--closest.locationid, closest.CountryID, DefaultLocationName, dist  from (
--SELECT top 1000000 locationid, l1.DefaultLocationName, l1.CountryID, locs.pt.STDistance(l1.locationgeography) dist FROM X_Location l1
--, (
--  select geography::Point(avg(latitudewgs84),avg(longitudewgs84),4326) pt,
--  DefaultLocationName,
--  CountryID,
--  VersionUpdated
--   from x_location l2
--   where versionupdated>'20140404'
--  group by DefaultLocationName, countryid,VersionUpdated )
--  locs
--  where l1.defaultlocationname=locs.defaultlocationname and l1.CountryID=locs.countryid --and l1.DefaultLocationName='sydney' 
--  and l1.versionupdated>'20140404' and locs.versionupdated>'20140404'
--  --group by l1.DefaultLocationName, l1.countryid
--  ORDER BY locs.pt.STDistance(l1.locationgeography))
--  as closest 
-- ) as found
-- where RowAsc=1)

-- update [NKD].[dbo].[X_Location] set versioncertainty=-1 where VersionCertainty=0 and VersionUpdated>'20140404'