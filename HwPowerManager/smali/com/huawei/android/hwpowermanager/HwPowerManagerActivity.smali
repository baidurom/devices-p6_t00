.class public Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;
.super Landroid/app/Activity;
.source "HwPowerManagerActivity.java"


# static fields
.field private static islowBatteryPowerNotified:Z


# instance fields
.field private mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryCapacity:D

.field private mBatteryGreenProgressBar:Landroid/widget/ProgressBar;

.field private mBatteryImageView:Landroid/widget/ImageView;

.field private mBatteryRedProgressBar:Landroid/widget/ProgressBar;

.field private mBatteryYellowProgressBar:Landroid/widget/ProgressBar;

.field private mConversion:Lcom/huawei/android/hwpowermanager/util/Conversion;

.field private mEdurationChargingTextView:Landroid/widget/TextView;

.field private mEdurationTimeHourTextView:Landroid/widget/TextView;

.field private mEdurationTimeMinuteTextView:Landroid/widget/TextView;

.field private mElectricNoneBase:D

.field private mEndurationTimeLinearLayout:Landroid/widget/LinearLayout;

.field private mFlagClearApps:Z

.field private mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

.field mInfoDialog:Landroid/app/AlertDialog;

.field private mModeSummaryNormal:Landroid/widget/TextView;

.field private mModeSummarySmart:Landroid/widget/TextView;

.field private mModeSummarySuper:Landroid/widget/TextView;

.field private mNormalModeLayout:Landroid/widget/RelativeLayout;

.field private mNormalModeRadio:Landroid/widget/ImageView;

.field private mNormalModeSystemBase:D

.field private mPlugged:I

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mPowerSaveButton:Landroid/widget/Button;

.field private mRawlevel:I

.field private mRealCapacity:D

.field private mSaveMode:I

.field private mSmartModeLayout:Landroid/widget/RelativeLayout;

.field private mSmartModeRadio:Landroid/widget/ImageView;

.field private mSmartModeSystemBase:D

.field private mSuperModeLayout:Landroid/widget/RelativeLayout;

.field private mSuperModeRadio:Landroid/widget/ImageView;

.field private mSuperModeSystemBase:D

.field private mTemperature:D

.field private mTimeTitleTextView:Landroid/widget/TextView;

.field private mVoltage:D

.field private mbatteryView:Landroid/widget/TextView;

.field private progressBarOnclick:Landroid/view/View$OnClickListener;

.field private time_leave:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->islowBatteryPowerNotified:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    .line 91
    iput v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPlugged:I

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSaveMode:I

    .line 111
    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeSystemBase:D

    .line 112
    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeSystemBase:D

    .line 113
    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeSystemBase:D

    .line 115
    iput-boolean v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mFlagClearApps:Z

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mInfoDialog:Landroid/app/AlertDialog;

    .line 618
    new-instance v0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;

    invoke-direct {v0, p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;-><init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 759
    new-instance v0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$11;

    invoke-direct {v0, p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$11;-><init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->progressBarOnclick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mFlagClearApps:Z

    return v0
.end method

.method static synthetic access$002(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mFlagClearApps:Z

    return p1
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->actionModeChanged(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryYellowProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryRedProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->islowBatteryPowerNotified:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-boolean p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->islowBatteryPowerNotified:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->updateModeTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->refreshBatteryInfoDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->showChargingStatus()V

    return-void
.end method

.method static synthetic access$1700(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mbatteryView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->showEndurationTime()V

    return-void
.end method

.method static synthetic access$1900(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->powerLowAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->changeModeRadioView(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->showBatteryInfoDialog()V

    return-void
.end method

.method static synthetic access$302(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSaveMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->updateTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPlugged:I

    return v0
.end method

.method static synthetic access$502(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPlugged:I

    return p1
.end method

.method static synthetic access$600(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I

    return v0
.end method

.method static synthetic access$602(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I

    return p1
.end method

.method static synthetic access$702(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mVoltage:D

    return-wide p1
.end method

.method static synthetic access$802(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mTemperature:D

    return-wide p1
.end method

.method static synthetic access$900(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryGreenProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private actionModeChanged(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 332
    const-string v5, ""

    .line 333
    .local v5, title:Ljava/lang/String;
    const-string v3, ""

    .line 334
    .local v3, msg:Ljava/lang/String;
    const/4 v2, 0x1

    .line 335
    .local v2, modeNumInt:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 336
    .local v4, radioObj:Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 337
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #radioObj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 339
    :cond_0
    move v1, v2

    .line 340
    .local v1, modeNum:I
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->readSaveMode()I

    move-result v6

    if-ne v1, v6, :cond_1

    .line 382
    :goto_0
    return-void

    .line 343
    :cond_1
    if-nez v1, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090010

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090006

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 354
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f09000e

    new-instance v8, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$9;

    invoke-direct {v8, p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$9;-><init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f09000f

    new-instance v8, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$8;

    invoke-direct {v8, p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$8;-><init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 381
    .local v0, mAlertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 346
    .end local v0           #mAlertDialog:Landroid/app/AlertDialog;
    :cond_2
    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    .line 347
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090011

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090007

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 350
    :cond_3
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090012

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 351
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090008

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private changeModeRadioView(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const v2, 0x7f020001

    const/high16 v1, 0x7f02

    .line 384
    if-nez p1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeRadio:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeRadio:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeRadio:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeRadio:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 390
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeRadio:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeRadio:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 392
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeRadio:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 394
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeRadio:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeRadio:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private createBatteryInfoArrays()[Ljava/lang/StringBuffer;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 789
    new-instance v0, Ljava/lang/StringBuffer;

    const v1, 0x7f09001a

    new-array v2, v9, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mVoltage:D

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 790
    new-instance v1, Ljava/lang/StringBuffer;

    const v2, 0x7f09001b

    new-array v3, v9, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mTemperature:D

    const-wide/high16 v6, 0x4024

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 791
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/StringBuffer;

    aput-object v0, v2, v8

    aput-object v1, v2, v9

    return-object v2
.end method

.method private createBatteryInfoDialog()V
    .locals 3

    .prologue
    .line 781
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 782
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->createBatteryInfoArrays()[Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mInfoDialog:Landroid/app/AlertDialog;

    .line 786
    return-void
.end method

.method private powerLowAction()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 737
    invoke-direct {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->changeModeRadioView(I)V

    .line 740
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    move-result-object v0

    .line 741
    .local v0, changeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;
    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->change(I)V

    .line 742
    iput v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSaveMode:I

    .line 743
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->updateTime()V

    .line 744
    return-void
.end method

.method private refreshBatteryInfoDialog()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    .line 795
    .line 796
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 799
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ArrayAdapter;

    if-nez v1, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 804
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 808
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->createBatteryInfoArrays()[Ljava/lang/StringBuffer;

    move-result-object v4

    .line 809
    array-length v1, v4

    if-ne v1, v7, :cond_0

    move v2, v3

    .line 813
    :goto_1
    if-ge v2, v7, :cond_2

    .line 814
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuffer;

    .line 815
    const v5, 0x7fffffff

    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v6}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 813
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 817
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private setTextForChn(Landroid/widget/TextView;)V
    .locals 2
    .parameter "consumption"

    .prologue
    .line 304
    const v1, 0x7f09004f

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private setupConfigManagerView()V
    .locals 12

    .prologue
    const v11, 0x7f0b003f

    const v10, 0x7f0b003e

    .line 259
    const v9, 0x7f0b002b

    invoke-virtual {p0, v9}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 260
    .local v7, savePowerSetting:Landroid/widget/LinearLayout;
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 261
    .local v8, savePowerTitle:Landroid/widget/TextView;
    const v9, 0x7f09002e

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 262
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 263
    .local v6, savePowerContent:Landroid/widget/TextView;
    const v9, 0x7f090030

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 264
    new-instance v9, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$3;

    invoke-direct {v9, p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$3;-><init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v9, 0x7f0b002c

    invoke-virtual {p0, v9}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 273
    .local v2, bkgdSetting:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 274
    .local v1, bkgdAppTitle:Landroid/widget/TextView;
    const v9, 0x7f09003e

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 275
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    .local v0, bkgdAppContent:Landroid/widget/TextView;
    const v9, 0x7f09003f

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 277
    new-instance v9, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$4;

    invoke-direct {v9, p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$4;-><init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v9, 0x7f0b002d

    invoke-virtual {p0, v9}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 287
    .local v4, bootAppSetting:Landroid/widget/LinearLayout;
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 288
    .local v5, bootAppTitle:Landroid/widget/TextView;
    const v9, 0x7f09002f

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 289
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 290
    .local v3, bootAppContent:Landroid/widget/TextView;
    const v9, 0x7f090031

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 291
    new-instance v9, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$5;

    invoke-direct {v9, p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$5;-><init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    return-void
.end method

.method private setupModeView()V
    .locals 14

    .prologue
    const v13, 0x7f0b0016

    const v12, 0x7f0b0015

    const v11, 0x7f0b0014

    const v10, 0x7f0b0013

    .line 220
    new-instance v1, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$2;

    invoke-direct {v1, p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$2;-><init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    .line 225
    .local v1, modeRadioClickListener:Landroid/view/View$OnClickListener;
    const v8, 0x7f0b0028

    invoke-virtual {p0, v8}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeLayout:Landroid/widget/RelativeLayout;

    .line 226
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 227
    .local v3, normalModeTitle:Landroid/widget/TextView;
    const v8, 0x7f090010

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mModeSummaryNormal:Landroid/widget/TextView;

    .line 229
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 230
    .local v2, normalModeContent:Landroid/widget/TextView;
    const v8, 0x7f090009

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeRadio:Landroid/widget/ImageView;

    .line 232
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 234
    const v8, 0x7f0b0029

    invoke-virtual {p0, v8}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeLayout:Landroid/widget/RelativeLayout;

    .line 235
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 236
    .local v5, smartModeTitle:Landroid/widget/TextView;
    const v8, 0x7f090011

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mModeSummarySmart:Landroid/widget/TextView;

    .line 238
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 239
    .local v4, smartModeContent:Landroid/widget/TextView;
    const v8, 0x7f09000a

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeRadio:Landroid/widget/ImageView;

    .line 241
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 243
    const v8, 0x7f0b002a

    invoke-virtual {p0, v8}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeLayout:Landroid/widget/RelativeLayout;

    .line 244
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 245
    .local v7, superModeTitle:Landroid/widget/TextView;
    const v8, 0x7f090012

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 246
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mModeSummarySuper:Landroid/widget/TextView;

    .line 247
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 248
    .local v6, superModeContent:Landroid/widget/TextView;
    const v8, 0x7f09000b

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeRadio:Landroid/widget/ImageView;

    .line 250
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v8, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeLayout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 255
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->readSaveMode()I

    move-result v0

    .line 256
    .local v0, currentMode:I
    invoke-direct {p0, v0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->changeModeRadioView(I)V

    .line 257
    return-void
.end method

.method private setupOtherInofView()V
    .locals 3

    .prologue
    .line 311
    const v2, 0x7f0b002f

    invoke-virtual {p0, v2}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 313
    .local v0, consumption:Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->setTextForChn(Landroid/widget/TextView;)V

    .line 315
    new-instance v2, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$6;

    invoke-direct {v2, p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$6;-><init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    const v2, 0x7f0b0030

    invoke-virtual {p0, v2}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 323
    .local v1, timeLeftInfo:Landroid/widget/TextView;
    new-instance v2, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$7;

    invoke-direct {v2, p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$7;-><init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    return-void
.end method

.method private showBatteryInfoDialog()V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 771
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->refreshBatteryInfoDialog()V

    .line 776
    :goto_0
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 778
    return-void

    .line 773
    :cond_0
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->createBatteryInfoDialog()V

    goto :goto_0
.end method

.method private showChargingStatus()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 754
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mTimeTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mEndurationTimeLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mEdurationChargingTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 757
    return-void
.end method

.method private showEndurationTime()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 748
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mTimeTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mEndurationTimeLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mEdurationChargingTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 751
    return-void
.end method

.method private updateModeTime()V
    .locals 13

    .prologue
    .line 459
    const-wide v7, 0x3fe874538ef34d6aL

    .line 460
    .local v7, scale:D
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mConversion:Lcom/huawei/android/hwpowermanager/util/Conversion;

    iget-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRealCapacity:D

    iget v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I

    iget-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    iget-wide v11, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeSystemBase:D

    mul-double/2addr v11, v7

    add-double/2addr v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/android/hwpowermanager/util/Conversion;->doubleToTime(DID)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, normalModeLeftTime:Ljava/lang/String;
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mConversion:Lcom/huawei/android/hwpowermanager/util/Conversion;

    iget-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRealCapacity:D

    iget v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I

    iget-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    iget-wide v11, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeSystemBase:D

    mul-double/2addr v11, v7

    add-double/2addr v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/android/hwpowermanager/util/Conversion;->doubleToTime(DID)Ljava/lang/String;

    move-result-object v9

    .line 464
    .local v9, smartModeLeftTime:Ljava/lang/String;
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mConversion:Lcom/huawei/android/hwpowermanager/util/Conversion;

    iget-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRealCapacity:D

    iget v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I

    iget-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    iget-wide v11, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeSystemBase:D

    mul-double/2addr v11, v7

    add-double/2addr v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/android/hwpowermanager/util/Conversion;->doubleToTime(DID)Ljava/lang/String;

    move-result-object v10

    .line 469
    .local v10, superModeLeftTime:Ljava/lang/String;
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mModeSummaryNormal:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mModeSummarySmart:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mModeSummarySuper:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    return-void
.end method

.method private updateTime()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 565
    iget v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPlugged:I

    if-nez v4, :cond_0

    .line 566
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    .line 579
    iget-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    invoke-virtual {v6}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->wifiPower()D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    .line 580
    iget-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    invoke-virtual {v6}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->blueToothPower()D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    .line 581
    iget-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    invoke-virtual {v6}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->gpsPower()D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    .line 582
    iget-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    invoke-virtual {v6}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->dataPower()D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    .line 583
    iget-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    invoke-virtual {v6}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->futureScreenPower()D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    .line 584
    iget-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "cpu.idle"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    .line 585
    iget-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.on"

    invoke-virtual {v6, v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    .line 586
    const-string v4, "HwPowerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mElectricNoneBase:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-wide/16 v2, 0x0

    .line 589
    .local v2, systemBase:D
    iget v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSaveMode:I

    packed-switch v4, :pswitch_data_0

    .line 597
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    const-string v5, "system.base.super"

    invoke-virtual {v4, v5}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    .line 599
    :goto_0
    const-wide v4, 0x3fe874538ef34d6aL

    mul-double/2addr v2, v4

    .line 602
    iget-wide v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRealCapacity:D

    iget v6, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I

    iget-wide v7, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    add-double/2addr v7, v2

    invoke-static {v4, v5, v6, v7, v8}, Lcom/huawei/android/hwpowermanager/util/Conversion;->doubleToHoursAndMins(DID)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->time_leave:Ljava/lang/String;

    .line 605
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->time_leave:Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 606
    .local v0, idx:I
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mEdurationTimeHourTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->time_leave:Ljava/lang/String;

    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mEdurationTimeMinuteTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->time_leave:Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 610
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.huawei.power.update.time"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const-string v4, "time_leave"

    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->time_leave:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v4, "electricNoneBase"

    iget-wide v5, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mElectricNoneBase:D

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 613
    const-string v4, "rawlevel"

    iget v5, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 616
    .end local v0           #idx:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #systemBase:D
    :cond_0
    return-void

    .line 591
    .restart local v2       #systemBase:D
    :pswitch_0
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    const-string v5, "system.base.normal"

    invoke-virtual {v4, v5}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    .line 592
    goto :goto_0

    .line 594
    :pswitch_1
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    const-string v5, "system.base.smart"

    invoke-virtual {v4, v5}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    .line 595
    goto :goto_0

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public jumpToTargetActivity(Ljava/lang/Class;)V
    .locals 1
    .parameter "targetActivity"

    .prologue
    .line 405
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v0, modelIntent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->finish()V

    .line 824
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0xf

    const/16 v3, 0x8

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    new-instance v1, Lcom/huawei/android/hwpowermanager/util/Conversion;

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/android/hwpowermanager/util/Conversion;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mConversion:Lcom/huawei/android/hwpowermanager/util/Conversion;

    .line 137
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0
 
    const/4 v1, 0x1
   
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->register()V

    .line 144
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->setupModeView()V

    .line 148
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->setupConfigManagerView()V

    .line 152
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->setupOtherInofView()V

    .line 153
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    move-result-object v0

    .line 154
    .local v0, changeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;
    invoke-virtual {v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->readSaveMode()I

    move-result v1

    iput v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSaveMode:I

    .line 156
    const v1, 0x7f0b0019

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryGreenProgressBar:Landroid/widget/ProgressBar;

    .line 157
    const v1, 0x7f0b001a

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryYellowProgressBar:Landroid/widget/ProgressBar;

    .line 158
    const v1, 0x7f0b001b

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryRedProgressBar:Landroid/widget/ProgressBar;

    .line 159
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryGreenProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->progressBarOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryYellowProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->progressBarOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryRedProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->progressBarOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v1, 0x7f0b001c

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryImageView:Landroid/widget/ImageView;

    .line 164
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mbatteryView:Landroid/widget/TextView;

    .line 174
    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mEndurationTimeLinearLayout:Landroid/widget/LinearLayout;

    .line 175
    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mTimeTitleTextView:Landroid/widget/TextView;

    .line 176
    const v1, 0x7f0b0020

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mEdurationTimeHourTextView:Landroid/widget/TextView;

    .line 177
    const v1, 0x7f0b0022

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mEdurationTimeMinuteTextView:Landroid/widget/TextView;

    .line 178
    const v1, 0x7f0b0025

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mEdurationChargingTextView:Landroid/widget/TextView;

    .line 180
    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPowerSaveButton:Landroid/widget/Button;

    .line 181
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPowerSaveButton:Landroid/widget/Button;

    const/4 v2, 0x6

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 182
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPowerSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$1;

    invoke-direct {v2, p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$1;-><init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.huawei.power.update.time"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.huawei.power.low.battery"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    new-instance v1, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    .line 200
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 202
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    const-string v2, "system.base.normal"

    invoke-virtual {v1, v2}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mNormalModeSystemBase:D

    .line 203
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryCapacity:D

    .line 205
    iget-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryCapacity:D

    double-to-int v1, v1

    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->getRealCapacity(I)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRealCapacity:D

    .line 207
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    const-string v2, "system.base.smart"

    invoke-virtual {v1, v2}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSmartModeSystemBase:D

    .line 208
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mHwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    const-string v2, "system.base.super"

    invoke-virtual {v1, v2}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSuperModeSystemBase:D

    .line 209
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->finish()V

    .line 32
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 435
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 436
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 437
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 429
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 431
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 412
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 414
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mFlagClearApps:Z

    .line 416
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    move-result-object v0

    .line 417
    .local v0, changeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;
    invoke-virtual {v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->readSaveMode()I

    move-result v1

    iput v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSaveMode:I

    .line 418
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->updateTime()V

    .line 420
    iget v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPlugged:I

    if-nez v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->showChargingStatus()V

    .line 423
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->showEndurationTime()V

    .line 425
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 828
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->updateTime()V

    .line 829
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->updateModeTime()V

    .line 830
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 440
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 441
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v1, "com.android.huawei.GPS_ACTION_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v1, "com.android.huawei.DATASERVICE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v1, "com.android.huawei.AUTOROTATE_ACTION_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v1, "com.android.huawei.BRIGHTNESS_ACTION_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v1, "com.android.huawei.AIRPLANEMODE_ACTION_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v1, "huawei.intent.action.SMART_POWER_RESULT_CLEAR_NUM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    return-void
.end method
