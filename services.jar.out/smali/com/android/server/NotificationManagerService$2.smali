.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 528
    .local v10, action:Ljava/lang/String;
    const/16 v20, 0x0

    .line 529
    .local v20, queryRestart:Z
    const/16 v18, 0x0

    .line 531
    .local v18, packageChanged:Z
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 536
    :cond_0
    const/16 v19, 0x0

    .line 537
    .local v19, pkgList:[Ljava/lang/String;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    const-string v1, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 570
    :goto_0
    if-eqz v19, :cond_8

    move-object/from16 v0, v19

    array-length v1, v0

    if-lez v1, :cond_8

    .line 571
    move-object/from16 v11, v19

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_8

    aget-object v2, v11, v15

    .line 572
    .local v2, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v20, :cond_6

    const/4 v5, 0x1

    :goto_2
    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    .line 571
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 539
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v17           #len$:I
    :cond_1
    if-eqz v20, :cond_2

    .line 540
    const-string v1, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 543
    .local v22, uri:Landroid/net/Uri;
    if-nez v22, :cond_4

    .line 643
    .end local v19           #pkgList:[Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :cond_3
    :goto_3
    return-void

    .line 546
    .restart local v19       #pkgList:[Ljava/lang/String;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_4
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 547
    .restart local v2       #pkgName:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 550
    if-eqz v18, :cond_5

    .line 553
    const/4 v12, 0x0

    .line 555
    .local v12, enabled:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 563
    const/4 v1, 0x1

    if-eq v12, v1, :cond_3

    if-eqz v12, :cond_3

    .line 568
    .end local v12           #enabled:I
    :cond_5
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19           #pkgList:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v2, v19, v1

    .restart local v19       #pkgList:[Ljava/lang/String;
    goto :goto_0

    .line 557
    .restart local v12       #enabled:I
    :catch_0
    move-exception v16

    .line 559
    .local v16, ignored:Ljava/lang/IllegalArgumentException;
    const-string v1, "NotificationService"

    const-string v3, "Unknown package failed to install"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 572
    .end local v12           #enabled:I
    .end local v16           #ignored:Ljava/lang/IllegalArgumentException;
    .end local v22           #uri:Landroid/net/Uri;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v17       #len$:I
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 576
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v17           #len$:I
    .end local v19           #pkgList:[Ljava/lang/String;
    :cond_7
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 582
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    .line 617
    :cond_8
    :goto_4
    const-string v1, "true"

    const-string v3, "ro.config.hw_quickpoweron"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 618
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 619
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 620
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 621
    .local v9, N:I
    add-int/lit8 v14, v9, -0x1

    .local v14, i:I
    :goto_5
    if-ltz v14, :cond_10

    .line 622
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 623
    .local v21, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x6

    if-eqz v1, :cond_a

    const-string v1, "android"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "system"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 625
    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_9

    .line 627
    :try_start_2
    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    .line 634
    :cond_9
    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    #calls: Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    invoke-static {v1, v0, v4}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 621
    :cond_a
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 584
    .end local v9           #N:I
    .end local v14           #i:I
    .end local v21           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_b
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 588
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 590
    :cond_c
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v3, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 594
    :cond_d
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 595
    const-string v1, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 596
    .local v8, userHandle:I
    if-ltz v8, :cond_8

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    goto/16 :goto_4

    .line 599
    .end local v8           #userHandle:I
    :cond_e
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_4

    .line 607
    :cond_f
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 611
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 612
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 628
    .restart local v9       #N:I
    .restart local v14       #i:I
    .restart local v21       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catch_1
    move-exception v13

    .line 631
    .local v13, ex:Landroid/app/PendingIntent$CanceledException;
    :try_start_4
    const-string v1, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canceled PendingIntent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 639
    .end local v9           #N:I
    .end local v13           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v14           #i:I
    .end local v21           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 638
    .restart local v9       #N:I
    .restart local v14       #i:I
    :cond_10
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1000(Lcom/android/server/NotificationManagerService;)V

    .line 639
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method
