.class Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;-><init>(Lcom/android/internal/telephony/PhoneProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

.field final synthetic val$this$0:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iput-object p2, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->val$this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_SIM_RECORDS_READY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1176
    const-string v2, "mccMnc"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1177
    .local v1, mccmnc:Ljava/lang/String;
    const-string v2, "imsi"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, imsi:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    #getter for: Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->access$000(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;)Lcom/android/internal/telephony/GlobalParamsAdaptor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/internal/telephony/GlobalParamsAdaptor;->checkPrePostPay(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1179
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    #getter for: Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->access$000(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;)Lcom/android/internal/telephony/GlobalParamsAdaptor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/GlobalParamsAdaptor;->checkGlobalEccNum(Ljava/lang/String;Landroid/content/Context;)V

    .line 1180
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    #getter for: Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->access$000(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;)Lcom/android/internal/telephony/GlobalParamsAdaptor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/GlobalParamsAdaptor;->checkGlobalAutoMatchParam(Ljava/lang/String;Landroid/content/Context;)V

    .line 1181
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;->this$1:Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;

    #getter for: Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->access$000(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;)Lcom/android/internal/telephony/GlobalParamsAdaptor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/GlobalParamsAdaptor;->checkAgpsServers(Ljava/lang/String;)V

    .line 1183
    .end local v0           #imsi:Ljava/lang/String;
    .end local v1           #mccmnc:Ljava/lang/String;
    :cond_0
    return-void
.end method
