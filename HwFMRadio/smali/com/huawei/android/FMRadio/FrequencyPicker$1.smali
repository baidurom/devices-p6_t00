.class Lcom/huawei/android/FMRadio/FrequencyPicker$1;
.super Ljava/lang/Object;
.source "FrequencyPicker.java"

# interfaces
.implements Lcom/huawei/android/FMRadio/ValuePicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/FrequencyPicker;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/FrequencyPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$1;->this$0:Lcom/huawei/android/FMRadio/FrequencyPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/huawei/android/FMRadio/ValuePicker;II)V
    .locals 1
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$1;->this$0:Lcom/huawei/android/FMRadio/FrequencyPicker;

    #calls: Lcom/huawei/android/FMRadio/FrequencyPicker;->refreshDecimalSpinner(I)V
    invoke-static {v0, p3}, Lcom/huawei/android/FMRadio/FrequencyPicker;->access$000(Lcom/huawei/android/FMRadio/FrequencyPicker;I)V

    .line 73
    return-void
.end method
