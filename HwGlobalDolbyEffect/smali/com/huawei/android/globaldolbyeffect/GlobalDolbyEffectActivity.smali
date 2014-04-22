.class public Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectActivity;
.super Landroid/app/Activity;
.source "GlobalDolbyEffectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "androidhwext:style/Theme.Emui"

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 13
    .local v0, themeID:I
    if-eqz v0, :cond_0

    .line 14
    #invoke-super {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    new-instance v3, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;

    invoke-direct {v3}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 22
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 25
    :cond_1
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectActivity;->finish()V

    .line 32
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
