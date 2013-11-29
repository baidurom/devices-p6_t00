.class public Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;
.super Landroid/app/Activity;
.source "DolbyEffectAlertDialog.java"


# instance fields
.field private callback:Landroid/media/dolby/DolbyMobileClientCallbacks;

.field private mAudioDialog:Landroid/app/AlertDialog;

.field private mCurrentPreset:I

.field private mDolbyCategory:I

.field private mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

.field private mDolbyOnDialog:Landroid/app/AlertDialog;

.field private mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHeadset:I

.field private mItems:[Ljava/lang/String;

.field private mPrePreset:I

.field private mVideoDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mIsHeadset:I

    .line 31
    iput-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mAudioDialog:Landroid/app/AlertDialog;

    .line 32
    iput-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mVideoDialog:Landroid/app/AlertDialog;

    .line 33
    iput-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyOnDialog:Landroid/app/AlertDialog;

    .line 35
    iput v2, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    .line 36
    iput v2, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I

    .line 39
    new-instance v0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$2;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->callback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mIsHeadset:I

    return v0
.end method

.method static synthetic access$002(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mIsHeadset:I

    return p1
.end method

.method static synthetic access$100(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mAudioDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I

    return v0
.end method

.method static synthetic access$400(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mVideoDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->showDolbyEffectDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyCategory:I

    return v0
.end method

.method static synthetic access$700(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    return v0
.end method

.method static synthetic access$702(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    return p1
.end method

.method private initDolbyMobileAudioEffectClient()V
    .locals 2

    .prologue
    .line 342
    new-instance v0, Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-direct {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    .line 343
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->callback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->registerCallback(Landroid/media/dolby/DolbyMobileClientCallbacks;)V

    .line 344
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0, p0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->bindToRemoteRunningService(Landroid/app/Activity;)V

    .line 345
    return-void
.end method

.method private showDolbyEffectDialog()V
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dolbycategory"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "dolbycategory"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyCategory:I

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getDolbyEffectOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    iget v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyCategory:I

    if-nez v1, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->showAudioEffectDialog()Z

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    iget v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyCategory:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->showVideoEffectDialog()Z

    goto :goto_0

    .line 116
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$5;

    invoke-direct {v3, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$5;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$4;

    invoke-direct {v3, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$4;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$3;

    invoke-direct {v2, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$3;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyOnDialog:Landroid/app/AlertDialog;

    .line 149
    const-string v1, "DolbyEffectAlertDialog"

    const-string v2, "DIALOG CREATED."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 392
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "androidhwext:style/Theme.Emui.Translucent.NoTitleBar"

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, themeID:I
    if-eqz v0, :cond_0

    .line 96
    #invoke-super {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-direct {p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->initDolbyMobileAudioEffectClient()V

    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v1, p0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->unBindFromRemoteRunningService(Landroid/app/Activity;)V

    .line 381
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 386
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DolbyEffectAlertDialog"

    const-string v2, "unregist headset state receiver failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 349
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mAudioDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mAudioDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    const-string v0, "DolbyEffectAlertDialog"

    const-string v1, "HOME KEY PRESSED."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getPresetCategory()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I

    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0, v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 359
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mAudioDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 371
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->finish()V

    .line 372
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 373
    return-void

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0, v3}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 356
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    iget v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffect(II)V

    goto :goto_0

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mVideoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mVideoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getPresetCategory()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 362
    iget v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I

    if-nez v0, :cond_5

    .line 363
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0, v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 369
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mVideoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 365
    :cond_5
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0, v3}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 366
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    iget v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffect(II)V

    goto :goto_2
.end method

.method public showAudioEffectDialog()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 155
    iget v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mIsHeadset:I

    if-ne v0, v4, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mItems:[Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalAudioHeadsetByPass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iput v2, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    .line 171
    :goto_0
    iget v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    iput v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I

    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mItems:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    new-instance v3, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$9;

    invoke-direct {v3, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$9;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$8;

    invoke-direct {v2, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$8;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$7;

    invoke-direct {v2, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$7;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$6;

    invoke-direct {v1, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$6;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mAudioDialog:Landroid/app/AlertDialog;

    .line 244
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mAudioDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 245
    return v4

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalAudioPreset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    goto :goto_0

    .line 163
    :cond_1
    const v0, 0x7f060015

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mItems:[Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalAudioSpeakerByPass()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iput v2, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    goto :goto_0

    .line 168
    :cond_2
    iput v4, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    goto :goto_0
.end method

.method public showVideoEffectDialog()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 249
    iget v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mIsHeadset:I

    if-ne v0, v4, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mItems:[Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalVideoHeadsetByPass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iput v2, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    .line 265
    :goto_0
    iget v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    iput v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I

    .line 266
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mItems:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    new-instance v3, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$13;

    invoke-direct {v3, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$13;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;

    invoke-direct {v2, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$11;

    invoke-direct {v2, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$11;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$10;

    invoke-direct {v1, p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$10;-><init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mVideoDialog:Landroid/app/AlertDialog;

    .line 337
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mVideoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 338
    return v4

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalVideoPreset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    goto :goto_0

    .line 257
    :cond_1
    const v0, 0x7f060015

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 258
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mItems:[Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalVideoSpeakerByPass()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iput v2, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    goto :goto_0

    .line 262
    :cond_2
    iput v4, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I

    goto :goto_0
.end method
