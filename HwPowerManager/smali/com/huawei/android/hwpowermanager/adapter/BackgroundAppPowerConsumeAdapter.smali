.class public Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;
.super Landroid/widget/SimpleAdapter;
.source "BackgroundAppPowerConsumeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;
    }
.end annotation


# instance fields
.field private mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 30
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput p3, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mResource:I

    .line 32
    iput-object p2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mData:Ljava/util/List;

    .line 33
    iput-object p6, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 34
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v2, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    invoke-direct {v2}, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;-><init>()V

    iput-object v2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    .line 50
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mResource:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 51
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    const/high16 v2, 0x7f0b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;->icon_app:Landroid/widget/ImageView;

    .line 52
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    const v2, 0x7f0b0001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;->title:Landroid/widget/TextView;

    .line 53
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    const v2, 0x7f0b0002

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;->consume_level:Landroid/widget/ImageView;

    .line 54
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    const v2, 0x7f0b0003

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;->indicator:Landroid/widget/TextView;

    .line 55
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    const v2, 0x7f0b0004

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v3, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;->checker:Landroid/widget/CheckBox;

    .line 56
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 61
    .local v0, dataSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v3, 0x1

    const-string v2, "packageName"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v3

    .line 65
    .local v1, mCheckBoxInfo:[Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    iget-object v2, v2, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;->checker:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    iget-object v2, v2, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;->checker:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    iget-object v3, v2, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;->checker:Landroid/widget/CheckBox;

    const-string v2, "switcher"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    iget-object v3, v2, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;->icon_app:Landroid/widget/ImageView;

    const-string v2, "icon_app"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    iget-object v3, v2, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;->title:Landroid/widget/TextView;

    const-string v2, "title"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    iget-object v3, v2, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;->consume_level:Landroid/widget/ImageView;

    const-string v2, "consume_level"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    iget-object v3, v2, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;->indicator:Landroid/widget/TextView;

    const-string v2, "indicator"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-object p2

    .line 58
    .end local v0           #dataSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v1           #mCheckBoxInfo:[Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    iput-object v2, p0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->mBackgroundAppConsumeView:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter$BackgroundAppConsumeView;

    goto/16 :goto_0
.end method
