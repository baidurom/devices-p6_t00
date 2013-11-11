.class Lcom/huawei/android/FMRadio/CollectPager$1;
.super Landroid/support/v4/view/PagerAdapter;
.source "CollectPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/CollectPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/CollectPager;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/CollectPager;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/huawei/android/FMRadio/CollectPager$1;->this$0:Lcom/huawei/android/FMRadio/CollectPager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "view"
    .parameter "position"

    .prologue
    .line 33
    if-nez p2, :cond_0

    .line 34
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectPager$1;->this$0:Lcom/huawei/android/FMRadio/CollectPager;

    #getter for: Lcom/huawei/android/FMRadio/CollectPager;->mLeftView:Lcom/huawei/android/FMRadio/CollectView;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/CollectPager;->access$000(Lcom/huawei/android/FMRadio/CollectPager;)Lcom/huawei/android/FMRadio/CollectView;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectPager$1;->this$0:Lcom/huawei/android/FMRadio/CollectPager;

    #getter for: Lcom/huawei/android/FMRadio/CollectPager;->mRightView:Lcom/huawei/android/FMRadio/CollectView;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/CollectPager;->access$100(Lcom/huawei/android/FMRadio/CollectPager;)Lcom/huawei/android/FMRadio/CollectView;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 43
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
