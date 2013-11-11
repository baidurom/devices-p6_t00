.class final Lcom/huawei/android/FMRadio/ValuePicker$1;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Lcom/huawei/android/FMRadio/ValuePicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/ValuePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field final mFmt:Ljava/util/Formatter;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker$1;->mBuilder:Ljava/lang/StringBuilder;

    .line 160
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker$1;->mBuilder:Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker$1;->mFmt:Ljava/util/Formatter;

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker$1;->mArgs:[Ljava/lang/Object;

    return-void
.end method
