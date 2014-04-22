.class public Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;
.super Landroid/widget/SimpleAdapter;
.source "SoftwareConsumeDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;
    }
.end annotation


# instance fields
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

.field private mResource:I

.field private mSoftwareView:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
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
            "[I)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 28
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput p3, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mResource:I

    .line 30
    iput-object p2, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mData:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 35
    if-nez p2, :cond_1

    .line 36
    new-instance v10, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    invoke-direct {v10}, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;-><init>()V

    iput-object v10, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mSoftwareView:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    .line 37
    iget-object v10, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    iget v11, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mResource:I

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 38
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mSoftwareView:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    const v10, 0x7f0b0043

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v11, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;->icon:Landroid/widget/ImageView;

    .line 39
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mSoftwareView:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    const v10, 0x7f0b0044

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v11, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;->title:Landroid/widget/TextView;

    .line 40
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mSoftwareView:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    const v10, 0x7f0b0046

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v11, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;->content:Landroid/widget/TextView;

    .line 41
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mSoftwareView:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    const v10, 0x7f0b0045

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, v11, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;->progress:Landroid/widget/ProgressBar;

    .line 42
    iget-object v10, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mSoftwareView:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    iget-object v10, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 55
    .local v1, dataSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v10, "icon"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 56
    .local v3, icon:Landroid/graphics/drawable/BitmapDrawable;
    const-string v10, "progress"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 57
    .local v5, process:D
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v10, "0.00"

    invoke-direct {v2, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, df:Ljava/text/DecimalFormat;
    invoke-virtual {v2, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, processT:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_0

    .line 62
    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 64
    const/4 v10, 0x3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 65
    .local v4, len:I
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 79
    .end local v4           #len:I
    :cond_0
    :goto_1
    const-string v10, "title"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 81
    .local v9, title:Ljava/lang/String;
    iget-object v10, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mSoftwareView:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    iget-object v10, v10, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v10, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mSoftwareView:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    iget-object v10, v10, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;->title:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v10, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090039

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, progressPercent:Ljava/lang/String;
    iget-object v10, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mSoftwareView:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    iget-object v10, v10, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;->content:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v10, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mSoftwareView:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    iget-object v10, v10, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;->progress:Landroid/widget/ProgressBar;

    double-to-int v11, v5

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 88
    return-object p2

    .line 44
    .end local v1           #dataSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v2           #df:Ljava/text/DecimalFormat;
    .end local v3           #icon:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #process:D
    .end local v7           #processT:Ljava/lang/String;
    .end local v8           #progressPercent:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    iput-object v10, p0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;->mSoftwareView:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter$SoftwareConsumeView;

    goto/16 :goto_0

    .line 67
    .restart local v1       #dataSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v2       #df:Ljava/text/DecimalFormat;
    .restart local v3       #icon:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5       #process:D
    .restart local v7       #processT:Ljava/lang/String;
    :cond_2
    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 69
    const/4 v10, 0x5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 70
    .restart local v4       #len:I
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 71
    goto :goto_1

    .line 73
    .end local v4           #len:I
    :cond_3
    const/4 v10, 0x4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 74
    .restart local v4       #len:I
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method
