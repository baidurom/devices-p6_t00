.class Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;
.super Ljava/lang/Object;
.source "SavingSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/SavingSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field message:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field public packgeName:Ljava/lang/String;

.field whitelistSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPackgeName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkName"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->packgeName:Ljava/lang/String;

    .line 75
    return-void
.end method
