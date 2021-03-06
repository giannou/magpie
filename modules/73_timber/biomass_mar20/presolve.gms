*** |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

** Fixing variables
v73_prod_natveg.fx(j,"other",ac,"wood") = 0;
v73_prod_natveg.fx(j,"primforest",ac,kforestry)$(not sameas(ac,"acx")) = 0;
v73_prod_forestry.fx(j,ac_est,kforestry) = 0;
v73_prod_natveg.fx(j,land_natveg,ac_est,kforestry) = 0;
vm_hvarea_secdforest.fx(j,ac_est) = 0;
v73_hvarea_other.fx(j,ac_est) = 0;
v73_hvarea_forestry.fx(j,ac_est) = 0;

** Future demand relevant in current time step depending on rotation length
pm_demand_forestry_future(i,kforestry)    = sum(t_ext$(t_ext.pos = pm_representative_rotation(t,i)),pm_demand_ext(t_ext,i,kforestry));
