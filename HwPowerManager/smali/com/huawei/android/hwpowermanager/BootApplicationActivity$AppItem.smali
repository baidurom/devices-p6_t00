.class Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
.super Ljava/lang/Object;
.source "BootApplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/BootApplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppItem"
.end annotation


# instance fields
.field mClsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mLable:Ljava/lang/CharSequence;

.field mNewEnable:Z

.field mPkgName:Ljava/lang/String;

.field mType:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mClsName:Ljava/util/ArrayList;

    return-void
.end method
