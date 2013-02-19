.class public final Lcom/huawei/android/content/res/ConfigurationEx;
.super Ljava/lang/Object;
.source "ConfigurationEx.java"


# instance fields
.field private configuration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "configuration"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/content/res/ConfigurationEx;->configuration:Landroid/content/res/Configuration;

    .line 26
    iput-object p1, p0, Lcom/huawei/android/content/res/ConfigurationEx;->configuration:Landroid/content/res/Configuration;

    .line 27
    return-void
.end method


# virtual methods
.method public getExtraConfig()Landroid/content/res/ConfigurationEx;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huawei/android/content/res/ConfigurationEx;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/ConfigurationEx;

    return-object v0
.end method
