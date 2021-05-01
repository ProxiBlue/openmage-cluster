# Auto-Scalable OpenMage Cluster
# Derived from https://github.com/jelastic-jps/magento-cluster

** Untested in production - use at own risk **

OpenMage, PHP based eCommerce platform, is packaged as an advanced highly reliable and auto-scalable cluster on top of certified Jelastic dockerized stack templates with the following topology:

- **Varnish** load balancer is supplemented with **NGINX** server as HTTPS proxy
- **Scalable NGINX PHP** application servers with preconfigured [automatic horizontal scaling](https://docs.jelastic.com/automatic-horizontal-scaling) to handle load spikes
- [**MariaDB Cluster**](https://github.com/jelastic-jps/mysql-cluster) with asynchronous master-slave replication to ensure high availability, fault tolerance and data security
- **Redis Sessions** node to retain user session parameters
- **Redis Cache** node for content cache storing
- [**Elastic Data Storage**](https://docs.jelastic.com/data-storage-container) node for media files
- PHP 7.4
- Lets Encrypt for SSL

<p align="center"> 
<img src="https://github.com/jelastic-jps/magento-cluster/blob/master/images/magento-topology.png" width="400">
</p>

## Deployment to the Cloud
Click the **Deploy** button below, specify your email address within the widget, choose one of the [Jelastic Public Cloud providers](https://jelastic.com/install-application/?manifest=https://raw.githubusercontent.com/jelastic-jps/magento-cluster/master/manifest.jps&keys=app.jelastic.eapps.com;app.cloud.hostnet.nl;app.jelastichosting.nl;app.appengine.flow.ch;app.jelasticlw.com.br;app.mircloud.host;app.jcs.opusinteractive.io;app.paas.quarinet.eu) and press **Install**.

[![Deploy](images/deploy-to-jelastic.png)](https://jelastic.com/install-application/?manifest=https://raw.githubusercontent.com/ProxiBlue/openmage-cluster/main/manifest.jps)

*Note:* If you are already registered at Jelastic, you can deploy this cluster by importing [the package manifest raw link](https://raw.githubusercontent.com/ProxiBlue/openmage-cluster/main/manifest.jps) within the dashboard using 'IMPORT'

<p align="center"> 
<img src="https://github.com/ProxiBlue/openmage-cluster/blob/main/images/import.png" width="400">
</p>


## Installation Process
In the opened confirmation window at Jelastic dashboard: 

<p align="center"> 
<img src="https://github.com/ProxiBlue/openmage-cluster/blob/main/images/settings.png" width="400">
</p>

* type the *Environment* name, 
* optionally, customize its [Display Name](https://docs.jelastic.com/environment-aliases). 
* set the OpenMage Locale, Timezone and Currency

Then, select the preferable [region](https://docs.jelastic.com/environment-regions) (if several are available in your jelastic environment) and click on **Install**.

<p align="center"> 
<img src="https://github.com/jelastic-jps/magento-cluster/blob/master/images/magento-installation.png" width="400">
</p>

Once the deployment is finished, you’ll see the appropriate success pop-up with access credentials to your administration Magento panel, whilst the same information will be duplicated to your email box.

<p align="center"> 
<img src="https://github.com/jelastic-jps/magento-cluster/blob/master/images/magento-successful-install.png" width="400">
</p>

So now you can just click on the **Open in browser** button within the shown frame and start filling your highly available and reliable Magento installation with the required content, being ready to handle as much users as your service requires.

## Customization  
Fine tuning and customization: multi-cloud HA and DR, geo distributed load balancing, performance optimization, WAF, CDN and other required addons can be installed afterward [on demand](https://jelastic.com/managed-auto-scalable-clusters-for-business/).

## Magento Managed Hosting Business
To start offering this solution to your customers please follow to [Auto-Scalable Clusters for Managed Cloud Business](https://jelastic.com/apaas/)
