.class Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "SavingSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/SavingSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemAppAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;


# direct methods
.method public constructor <init>(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 83
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 85
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$000(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 90
    .local v0, count:I
    :goto_0
    return v0

    .line 88
    .end local v0           #count:I
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$000(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;
    invoke-static {v0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$000(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 98
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 104
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000d

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 109
    new-instance v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;

    invoke-direct {v0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;-><init>()V

    .line 110
    .local v0, h:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;
    const/high16 v2, 0x7f0b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 111
    const v2, 0x7f0b000e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->name:Landroid/widget/TextView;

    .line 112
    const v2, 0x7f0b0042

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->whitelistSwitch:Landroid/widget/Switch;

    .line 114
    const v2, 0x7f0b0041

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->message:Landroid/widget/TextView;

    .line 118
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$000(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    .line 119
    .local v1, item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mLoader:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$100(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->insertWaitingObject(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)V

    .line 120
    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->label:Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->toShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->setPackgeName(Ljava/lang/String;)V

    .line 127
    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->whitelistSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;

    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    invoke-direct {v3, v4, p1, v0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;-><init>(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;ILcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->whitelistSwitch:Landroid/widget/Switch;

    iget-boolean v3, v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 132
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #calls: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->checkAndMarkRogueApp(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;)Z
    invoke-static {v2, v0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$200(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;)Z

    .line 134
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-boolean v2, v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->visible:Z

    if-nez v2, :cond_0

    .line 137
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :goto_0
    return-object p2

    .line 139
    :cond_0
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
