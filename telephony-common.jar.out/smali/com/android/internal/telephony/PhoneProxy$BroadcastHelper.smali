.class Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;
.super Ljava/lang/Object;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastHelper"
.end annotation


# instance fields
.field private globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;

.field private mPhoneProxyReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 1
    .parameter

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1169
    new-instance v0, Lcom/android/internal/telephony/GlobalParamsAdaptor;

    invoke-direct {v0}, Lcom/android/internal/telephony/GlobalParamsAdaptor;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;

    .line 1170
    new-instance v0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper$1;-><init>(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;Lcom/android/internal/telephony/PhoneProxy;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->mPhoneProxyReceiver:Landroid/content/BroadcastReceiver;

    .line 1185
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;)Lcom/android/internal/telephony/GlobalParamsAdaptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->globalParamsAdaptor:Lcom/android/internal/telephony/GlobalParamsAdaptor;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 1189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1190
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SIM_RECORDS_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1191
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy$BroadcastHelper;->mPhoneProxyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1192
    return-void
.end method
