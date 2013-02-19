.class Lcom/android/internal/telephony/msim/HWNetSelect$3;
.super Ljava/lang/Object;
.source "HWNetSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/msim/HWNetSelect;->createThreadToPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/msim/HWNetSelect;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/msim/HWNetSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/msim/HWNetSelect$3;->this$0:Lcom/android/internal/telephony/msim/HWNetSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    :goto_0
    const/4 v0, 0x1

    const-string v1, "persist.radio.1sthwlauncher"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect$3;->this$0:Lcom/android/internal/telephony/msim/HWNetSelect;

    #calls: Lcom/android/internal/telephony/msim/HWNetSelect;->promptUserSubscription(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/msim/HWNetSelect;->access$200(Lcom/android/internal/telephony/msim/HWNetSelect;Z)V

    .line 198
    return-void

    .line 201
    :cond_0
    const-wide/16 v0, 0x61f

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method
