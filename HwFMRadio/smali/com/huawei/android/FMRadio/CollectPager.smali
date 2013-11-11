.class public Lcom/huawei/android/FMRadio/CollectPager;
.super Landroid/support/v4/view/ViewPager;
.source "CollectPager.java"


# instance fields
.field private mLeftView:Lcom/huawei/android/FMRadio/CollectView;

.field private mRightView:Lcom/huawei/android/FMRadio/CollectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x4

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Lcom/huawei/android/FMRadio/CollectView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/huawei/android/FMRadio/CollectView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/CollectPager;->mLeftView:Lcom/huawei/android/FMRadio/CollectView;

    .line 26
    new-instance v0, Lcom/huawei/android/FMRadio/CollectView;

    invoke-direct {v0, p1, v2, v2}, Lcom/huawei/android/FMRadio/CollectView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/CollectPager;->mRightView:Lcom/huawei/android/FMRadio/CollectView;

    .line 27
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectPager;->mLeftView:Lcom/huawei/android/FMRadio/CollectView;

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/CollectPager;->addView(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectPager;->mRightView:Lcom/huawei/android/FMRadio/CollectView;

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/CollectPager;->addView(Landroid/view/View;)V

    .line 29
    new-instance v0, Lcom/huawei/android/FMRadio/CollectPager$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/CollectPager$1;-><init>(Lcom/huawei/android/FMRadio/CollectPager;)V

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/CollectPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/FMRadio/CollectPager;)Lcom/huawei/android/FMRadio/CollectView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectPager;->mLeftView:Lcom/huawei/android/FMRadio/CollectView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/FMRadio/CollectPager;)Lcom/huawei/android/FMRadio/CollectView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectPager;->mRightView:Lcom/huawei/android/FMRadio/CollectView;

    return-object v0
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectPager;->mLeftView:Lcom/huawei/android/FMRadio/CollectView;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/CollectView;->notifyDataSetChanged()V

    .line 59
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectPager;->mRightView:Lcom/huawei/android/FMRadio/CollectView;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/CollectView;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method public setOnCollectListener(Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;)V
    .locals 1
    .parameter "onCollectListener"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectPager;->mLeftView:Lcom/huawei/android/FMRadio/CollectView;

    invoke-virtual {v0, p1}, Lcom/huawei/android/FMRadio/CollectView;->setOnCollectListener(Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;)V

    .line 64
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectPager;->mRightView:Lcom/huawei/android/FMRadio/CollectView;

    invoke-virtual {v0, p1}, Lcom/huawei/android/FMRadio/CollectView;->setOnCollectListener(Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;)V

    .line 65
    return-void
.end method
