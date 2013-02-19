.class Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;
.super Ljava/lang/Object;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalChecker"
.end annotation


# instance fields
.field private mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter
    .parameter "simRecords"

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2229
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2230
    return-void
.end method

.method private sendSimRecordsReadyBroadcast()V
    .locals 4

    .prologue
    .line 2244
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2246
    .local v1, operatorNumeric:Ljava/lang/String;
    const-string v2, "SIM RECORDS"

    const-string v3, "broadcast TelephonyIntents.ACTION_SIM_RECORDS_READY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SIM_RECORDS_READY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2248
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2249
    const-string v2, "mccMnc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2250
    const-string v2, "imsi"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2251
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 2252
    return-void
.end method


# virtual methods
.method public loadGID1()V
    .locals 4

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3e

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->handlerEx:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$000(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2256
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$208(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    .line 2257
    return-void
.end method

.method public onAllRecordsLoaded()V
    .locals 2

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/VirtualNet;->loadVirtualNet(Ljava/lang/String;Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 2238
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->sendSimRecordsReadyBroadcast()V

    .line 2239
    return-void
.end method

.method public onOperatorNumericLoaded()V
    .locals 2

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/VirtualNet;->loadSpecialFiles(Ljava/lang/String;Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 2234
    return-void
.end method
