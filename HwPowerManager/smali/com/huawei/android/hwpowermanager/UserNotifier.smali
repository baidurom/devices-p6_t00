.class public Lcom/huawei/android/hwpowermanager/UserNotifier;
.super Ljava/lang/Object;
.source "UserNotifier.java"


# instance fields
.field private mContentIntent:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private mNotificaitonData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotification:Landroid/app/Notification;

.field private mNotificationID:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mReceiverCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificaitonData:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContext:Landroid/content/Context;

    .line 36
    const v0, 0x7f02001c

    iput v0, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificationID:I

    .line 37
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 38
    return-void
.end method

.method private getContentIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    .line 183
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContentIntent:Landroid/content/Intent;

    const/high16 v2, 0x800

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getDeleteIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string v1, "huawei.intent.action.NOTIFICATION_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const/4 v1, 0x1

    const/high16 v2, 0x1000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getLeftActionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mReceiverCls:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "huawei.intent.action.NOTIFICATION_ACTION_1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const/4 v1, 0x2

    const/high16 v2, 0x1000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createNotification()Lcom/huawei/android/hwpowermanager/UserNotifier;
    .locals 17

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContext:Landroid/content/Context;

    const v13, 0x7f090042

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, hint:Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 81
    .local v7, message:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContext:Landroid/content/Context;

    const v13, 0x7f090043

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, left:Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 87
    .local v6, leftTitle:Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    .local v1, appsLabel:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificaitonData:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 89
    .local v8, ndSize:I
    const/4 v11, 0x0

    .line 91
    .local v11, title:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, idx:I
    :goto_0
    if-ge v4, v8, :cond_0

    .line 93
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 94
    .local v9, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificaitonData:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/16 v13, 0x80

    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 102
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    :goto_1
    const/4 v12, 0x1

    if-ne v12, v8, :cond_2

    .line 114
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, s:Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 116
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 119
    :cond_1
    const/4 v12, 0x1

    if-ne v8, v12, :cond_5

    .line 120
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f02001c

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huawei/android/hwpowermanager/UserNotifier;->getContentIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huawei/android/hwpowermanager/UserNotifier;->getDeleteIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f020017

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificaitonData:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Lcom/huawei/android/hwpowermanager/UserNotifier;->getLeftActionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v13, v14, v6, v12}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotification:Landroid/app/Notification;

    .line 155
    :goto_2
    return-object p0

    .line 95
    .end local v10           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 96
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "UserNotifier"

    const-string v13, "Handle wasting power apps NameNotFoundException"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificaitonData:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificaitonData:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 100
    goto/16 :goto_1

    .line 98
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 99
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 105
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    if-eqz v11, :cond_3

    .line 107
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :cond_3
    add-int/lit8 v12, v8, -0x1

    if-ge v4, v12, :cond_4

    .line 111
    const-string v12, ", "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 138
    .restart local v10       #s:Ljava/lang/String;
    :cond_5
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f02001c

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huawei/android/hwpowermanager/UserNotifier;->getContentIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huawei/android/hwpowermanager/UserNotifier;->getDeleteIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotification:Landroid/app/Notification;

    goto/16 :goto_2
.end method

.method public destoryNotification()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificationID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 165
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificaitonData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    return-void
.end method

.method public doNotification()Lcom/huawei/android/hwpowermanager/UserNotifier;
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificationID:I

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 160
    return-object p0
.end method

.method public setBroadcastReceiver(Ljava/lang/Class;)Lcom/huawei/android/hwpowermanager/UserNotifier;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/huawei/android/hwpowermanager/UserNotifier;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mReceiverCls:Ljava/lang/Class;

    .line 67
    return-object p0
.end method

.method public setContentIntent(Landroid/content/Intent;)Lcom/huawei/android/hwpowermanager/UserNotifier;
    .locals 0
    .parameter "intent"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mContentIntent:Landroid/content/Intent;

    .line 53
    return-object p0
.end method

.method public setNotificaitonData(Ljava/util/ArrayList;)Lcom/huawei/android/hwpowermanager/UserNotifier;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/android/hwpowermanager/UserNotifier;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/UserNotifier;->mNotificaitonData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_0
    return-object p0
.end method
