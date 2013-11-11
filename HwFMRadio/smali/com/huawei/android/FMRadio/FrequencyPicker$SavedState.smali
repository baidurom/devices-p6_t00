.class Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "FrequencyPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/FrequencyPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFrequency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState$1;

    invoke-direct {v0}, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;->mFrequency:I

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/huawei/android/FMRadio/FrequencyPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .parameter "superState"
    .parameter "frequency"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 149
    iput p2, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;->mFrequency:I

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;ILcom/huawei/android/FMRadio/FrequencyPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public getFrequency()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;->mFrequency:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    iget v0, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$SavedState;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return-void
.end method
