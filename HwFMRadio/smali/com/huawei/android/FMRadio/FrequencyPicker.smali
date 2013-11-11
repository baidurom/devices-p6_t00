.class public Lcom/huawei/android/FMRadio/FrequencyPicker;
.super Landroid/widget/FrameLayout;
.source "FrequencyPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;
    }
.end annotation


# instance fields
.field private final mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

.field private final mIntegerDisplayValues:[Ljava/lang/String;

.field private final mIntegerSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

.field private mIsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/FMRadio/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const/high16 v0, 0x7f01

    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/android/FMRadio/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-boolean v6, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIsEnabled:Z

    .line 38
    const/16 v2, 0x16

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "87."

    aput-object v3, v2, v5

    const-string v3, "88."

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "89."

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "90."

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "91."

    aput-object v4, v2, v3

    const-string v3, "92."

    aput-object v3, v2, v7

    const/4 v3, 0x6

    const-string v4, "93."

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "94."

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "95."

    aput-object v4, v2, v3

    const-string v3, "96."

    aput-object v3, v2, v8

    const/16 v3, 0xa

    const-string v4, "97."

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "98."

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "99."

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "100."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "101."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "102."

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "103."

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "104."

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "105."

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "106."

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "107."

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "108."

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerDisplayValues:[Ljava/lang/String;

    .line 54
    sget-object v2, Lcom/huawei/android/FMRadio/R$styleable;->FrequencyPicker:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, attributesArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 63
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030004

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    const v2, 0x7f0b0015

    invoke-virtual {p0, v2}, Lcom/huawei/android/FMRadio/FrequencyPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/FMRadio/ValuePicker;

    iput-object v2, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    .line 66
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    const/16 v3, 0x57

    invoke-virtual {v2, v3}, Lcom/huawei/android/FMRadio/ValuePicker;->setMinValue(I)V

    .line 67
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Lcom/huawei/android/FMRadio/ValuePicker;->setMaxValue(I)V

    .line 68
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    iget-object v3, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerDisplayValues:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/huawei/android/FMRadio/ValuePicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    new-instance v3, Lcom/huawei/android/FMRadio/FrequencyPicker$1;

    invoke-direct {v3, p0}, Lcom/huawei/android/FMRadio/FrequencyPicker$1;-><init>(Lcom/huawei/android/FMRadio/FrequencyPicker;)V

    invoke-virtual {v2, v3}, Lcom/huawei/android/FMRadio/ValuePicker;->setOnValueChangedListener(Lcom/huawei/android/FMRadio/ValuePicker$OnValueChangeListener;)V

    .line 76
    const v2, 0x7f0b0016

    invoke-virtual {p0, v2}, Lcom/huawei/android/FMRadio/FrequencyPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/FMRadio/ValuePicker;

    iput-object v2, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    .line 77
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v2, v7}, Lcom/huawei/android/FMRadio/ValuePicker;->setMinValue(I)V

    .line 78
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v2, v8}, Lcom/huawei/android/FMRadio/ValuePicker;->setMaxValue(I)V

    .line 79
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    new-instance v3, Lcom/huawei/android/FMRadio/FrequencyPicker$2;

    invoke-direct {v3, p0}, Lcom/huawei/android/FMRadio/FrequencyPicker$2;-><init>(Lcom/huawei/android/FMRadio/FrequencyPicker;)V

    invoke-virtual {v2, v3}, Lcom/huawei/android/FMRadio/ValuePicker;->setOnValueChangedListener(Lcom/huawei/android/FMRadio/ValuePicker$OnValueChangeListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FrequencyPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    invoke-virtual {p0, v5}, Lcom/huawei/android/FMRadio/FrequencyPicker;->setEnabled(Z)V

    .line 102
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/FMRadio/FrequencyPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/huawei/android/FMRadio/FrequencyPicker;->refreshDecimalSpinner(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/android/FMRadio/FrequencyPicker;)Lcom/huawei/android/FMRadio/ValuePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/android/FMRadio/FrequencyPicker;)Lcom/huawei/android/FMRadio/ValuePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    return-object v0
.end method

.method private refreshDecimalSpinner(I)V
    .locals 5
    .parameter "newVal"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 106
    const/16 v1, 0x57

    if-ne p1, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1, v3}, Lcom/huawei/android/FMRadio/ValuePicker;->setMinValue(I)V

    .line 108
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1, v4}, Lcom/huawei/android/FMRadio/ValuePicker;->setMaxValue(I)V

    .line 109
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1, v3}, Lcom/huawei/android/FMRadio/ValuePicker;->setValue(I)V

    .line 110
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ValuePicker;->invalidate()V

    .line 123
    :goto_0
    return-void

    .line 111
    :cond_0
    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1, v2}, Lcom/huawei/android/FMRadio/ValuePicker;->setMinValue(I)V

    .line 113
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1, v2}, Lcom/huawei/android/FMRadio/ValuePicker;->setMaxValue(I)V

    .line 114
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1, v2}, Lcom/huawei/android/FMRadio/ValuePicker;->setValue(I)V

    .line 115
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ValuePicker;->invalidate()V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ValuePicker;->getValue()I

    move-result v0

    .line 118
    .local v0, value:I
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1, v2}, Lcom/huawei/android/FMRadio/ValuePicker;->setMinValue(I)V

    .line 119
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1, v4}, Lcom/huawei/android/FMRadio/ValuePicker;->setMaxValue(I)V

    .line 120
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1, v0}, Lcom/huawei/android/FMRadio/ValuePicker;->setValue(I)V

    .line 121
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ValuePicker;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentFrequency()I
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/ValuePicker;->getValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ValuePicker;->getValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIsEnabled:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 187
    move-object v0, p1

    check-cast v0, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;

    .line 188
    .local v0, ss:Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;
    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 189
    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;->getFrequency()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/android/FMRadio/FrequencyPicker;->setCurrentFrequency(Ljava/lang/Integer;)V

    .line 190
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 181
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 182
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FrequencyPicker;->getCurrentFrequency()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcelable;ILcom/huawei/android/FMRadio/FrequencyPicker$1;)V

    return-object v1
.end method

.method public setCurrentFrequency(Ljava/lang/Integer;)V
    .locals 2
    .parameter "currentFrequency"

    .prologue
    .line 197
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FrequencyPicker;->getCurrentFrequency()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/huawei/android/FMRadio/ValuePicker;->setValue(I)V

    .line 206
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    invoke-direct {p0, v0}, Lcom/huawei/android/FMRadio/FrequencyPicker;->refreshDecimalSpinner(I)V

    .line 207
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lcom/huawei/android/FMRadio/ValuePicker;->setValue(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v0, p1}, Lcom/huawei/android/FMRadio/ValuePicker;->setEnabled(Z)V

    .line 132
    iput-boolean p1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker;->mIsEnabled:Z

    goto :goto_0
.end method
