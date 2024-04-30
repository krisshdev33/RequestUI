using scp.cloud as my from '../db/data-model.cds';

service ScpCloudService {
	@readonly entity RequestUI as projection on my.RequestUI;
	@readonly entity RequestTypes as projection on my.RequestTypes;
	@readonly entity GlobalRegions as projection on my.GlobalRegions;
	@readonly entity BusinessUnits as projection on my.BusinessUnits;
	@readonly entity Priorities as projection on my.Priorities;
	@readonly entity Countries as projection on my.Countries;
}