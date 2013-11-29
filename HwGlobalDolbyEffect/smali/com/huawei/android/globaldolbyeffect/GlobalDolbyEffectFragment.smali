.class public Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;
.super Landroid/preference/PreferenceFragment;
.source "GlobalDolbyEffectFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field callback:Landroid/media/dolby/DolbyMobileClientCallbacks;

.field private mAudioEffect:Landroid/preference/Preference;

.field private mContext:Landroid/app/Activity;

.field private mCurrentPreset:I

.field private mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

.field private mDolbyEffectOn:Landroid/preference/CheckBoxPreference;

.field mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDolbyEffectOn:Z

.field private mIsHeadset:I

.field private mItems:[Ljava/lang/String;

.field private mVideoEffect:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyEffectOn:Landroid/preference/CheckBoxPreference;

    .line 30
    iput-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mAudioEffect:Landroid/preference/Preference;

    .line 31
    iput-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mVideoEffect:Landroid/preference/Preference;

    .line 33
    iput v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    .line 35
    iput-boolean v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsDolbyEffectOn:Z

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsHeadset:I

    .line 37
    iput-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    .line 40
    new-instance v0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment$1;-><init>(Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;)V

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    new-instance v0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment$2;

    invoke-direct {v0, p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment$2;-><init>(Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;)V

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->callback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    return-void
.end method

.method static synthetic access$002(Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsHeadset:I

    return p1
.end method

.method static synthetic access$100(Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->updateUI()V

    return-void
.end method

.method private initDolbyMobileAudioEffectClient()V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-direct {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    .line 235
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->callback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->registerCallback(Landroid/media/dolby/DolbyMobileClientCallbacks;)V

    .line 236
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->bindToRemoteRunningService(Landroid/app/Activity;)V

    .line 237
    return-void
.end method

.method private initPreference()V
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyEffectOn:Landroid/preference/CheckBoxPreference;

    .line 96
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyEffectOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mAudioEffect:Landroid/preference/Preference;

    .line 99
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mAudioEffect:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 101
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mVideoEffect:Landroid/preference/Preference;

    .line 102
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mVideoEffect:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    return-void
.end method

.method private updateUI()V
    .locals 5

    .prologue
    const v2, 0x7f06001b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getDolbyEffectOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsDolbyEffectOn:Z

    .line 159
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyEffectOn:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsDolbyEffectOn:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    iget-boolean v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsDolbyEffectOn:Z

    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mAudioEffect:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mVideoEffect:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 165
    iget v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsHeadset:I

    if-ne v0, v4, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mItems:[Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalAudioHeadsetByPass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iput v3, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mAudioEffect:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mItems:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mItems:[Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalVideoHeadsetByPass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iput v3, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    .line 180
    :goto_1
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mVideoEffect:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mItems:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    :goto_2
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalAudioPreset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalVideoPreset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mItems:[Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalAudioSpeakerByPass()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    iput v3, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    .line 188
    :goto_3
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mAudioEffect:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mItems:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mItems:[Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalVideoSpeakerByPass()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    iput v3, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    .line 196
    :goto_4
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mVideoEffect:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mItems:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 186
    :cond_3
    iput v4, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    goto :goto_3

    .line 194
    :cond_4
    iput v4, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    goto :goto_4

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mAudioEffect:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mAudioEffect:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mVideoEffect:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mVideoEffect:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    iput-object p1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mContext:Landroid/app/Activity;

    .line 92
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 231
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    invoke-direct {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->initDolbyMobileAudioEffectClient()V

    .line 84
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->addPreferencesFromResource(I)V

    .line 85
    invoke-direct {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->initPreference()V

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->unBindFromRemoteRunningService(Landroid/app/Activity;)V

    .line 223
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->callback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->unregisterCallback(Landroid/media/dolby/DolbyMobileClientCallbacks;)V

    .line 225
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 226
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 109
    const v3, 0x7f060005

    invoke-virtual {p0, v3}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 111
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getDolbyEffectOn()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsDolbyEffectOn:Z

    .line 112
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyEffectOn:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsDolbyEffectOn:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    iget-boolean v3, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsDolbyEffectOn:Z

    invoke-virtual {v0, v3}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectOn(Z)V

    .line 114
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    iget-boolean v3, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsDolbyEffectOn:Z

    invoke-virtual {v0, v3}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setGlobalEffectOn(Z)V

    .line 116
    iget-boolean v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsDolbyEffectOn:Z

    if-eqz v0, :cond_0

    .line 117
    iget v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsHeadset:I

    if-ne v0, v1, :cond_3

    .line 118
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalAudioHeadsetByPass()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 136
    :cond_0
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->updateUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 111
    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0, v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 122
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalAudioPreset()I

    move-result v0

    iput v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    .line 123
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    iget v3, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mCurrentPreset:I

    invoke-virtual {v0, v2, v3}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffect(II)V

    goto :goto_1

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalAudioSpeakerByPass()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    goto :goto_1

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0, v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 131
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0, v2, v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffect(II)V

    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v0, "GlobalDolbyEffectActivity"

    const-string v2, "updateUI() failed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 141
    :cond_5
    const v3, 0x7f06000b

    invoke-virtual {p0, v3}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 143
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mContext:Landroid/app/Activity;

    const-class v4, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    const-string v3, "dolbycategory"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 147
    :cond_6
    const v3, 0x7f060010

    invoke-virtual {p0, v3}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 149
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string v2, "dolbycategory"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_7
    move v1, v2

    .line 154
    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 210
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->updateUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GlobalDolbyEffectActivity"

    const-string v2, "updateUI() failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
