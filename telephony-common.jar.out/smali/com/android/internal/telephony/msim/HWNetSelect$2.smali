.class Lcom/android/internal/telephony/msim/HWNetSelect$2;
.super Ljava/lang/Object;
.source "HWNetSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/msim/HWNetSelect;->createThreadToListenLauncher()V
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
    .line 164
    iput-object p1, p0, Lcom/android/internal/telephony/msim/HWNetSelect$2;->this$0:Lcom/android/internal/telephony/msim/HWNetSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 167
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect$2;->this$0:Lcom/android/internal/telephony/msim/HWNetSelect;

    #getter for: Lcom/android/internal/telephony/msim/HWNetSelect;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/HWNetSelect;->access$100(Lcom/android/internal/telephony/msim/HWNetSelect;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect$2;->this$0:Lcom/android/internal/telephony/msim/HWNetSelect;

    #getter for: Lcom/android/internal/telephony/msim/HWNetSelect;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/HWNetSelect;->access$100(Lcom/android/internal/telephony/msim/HWNetSelect;)Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 169
    .local v0, am:Landroid/app/ActivityManager;
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 170
    .local v2, cn:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, className:Ljava/lang/String;
    const-string v4, "com.huawei.android.launcher"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.huawei.android.launcher.Launcher"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const-string v4, "telecom.mdesk"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "telecom.mdesk.Launcher"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const-string v4, "com.android.launcher"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "com.android.launcher2.Launcher"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    :cond_2
    const-string v4, "persist.radio.1sthwlauncher"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void

    .line 182
    :cond_3
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v4

    goto :goto_0
.end method
