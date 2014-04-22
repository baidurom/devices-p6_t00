.class Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;
.super Ljava/lang/Object;
.source "BackgroundAppPowerConsumeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackgroundAppConsumeView"
.end annotation


# instance fields
.field checker:Landroid/widget/CheckBox;

.field consume_level:Landroid/widget/ImageView;

.field icon_app:Landroid/widget/ImageView;

.field indicator:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
