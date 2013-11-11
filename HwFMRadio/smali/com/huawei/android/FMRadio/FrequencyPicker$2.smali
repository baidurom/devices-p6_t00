.class Lcom/huawei/android/FMRadio/FrequencyPicker$2;
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
    .line 79
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$2;->this$0:Lcom/huawei/android/FMRadio/FrequencyPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/huawei/android/FMRadio/ValuePicker;II)V
    .locals 4
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 81
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$2;->this$0:Lcom/huawei/android/FMRadio/FrequencyPicker;

    #getter for: Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FrequencyPicker;->access$100(Lcom/huawei/android/FMRadio/FrequencyPicker;)Lcom/huawei/android/FMRadio/ValuePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/FMRadio/ValuePicker;->getMinValue()I

    move-result v1

    .line 82
    .local v1, minValue:I
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$2;->this$0:Lcom/huawei/android/FMRadio/FrequencyPicker;

    #getter for: Lcom/huawei/android/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/huawei/android/FMRadio/ValuePicker;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FrequencyPicker;->access$100(Lcom/huawei/android/FMRadio/FrequencyPicker;)Lcom/huawei/android/FMRadio/ValuePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/FMRadio/ValuePicker;->getMaxValue()I

    move-result v0

    .line 84
    .local v0, maxValue:I
    const/4 v2, -0x1

    .line 86
    .local v2, newInteger:I
    if-ne p2, v0, :cond_2

    if-ne p3, v1, :cond_2

    .line 87
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$2;->this$0:Lcom/huawei/android/FMRadio/FrequencyPicker;

    #getter for: Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/huawei/android/FMRadio/ValuePicker;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FrequencyPicker;->access$200(Lcom/huawei/android/FMRadio/FrequencyPicker;)Lcom/huawei/android/FMRadio/ValuePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/FMRadio/ValuePicker;->getValue()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 92
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    .line 93
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$2;->this$0:Lcom/huawei/android/FMRadio/FrequencyPicker;

    #getter for: Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/huawei/android/FMRadio/ValuePicker;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FrequencyPicker;->access$200(Lcom/huawei/android/FMRadio/FrequencyPicker;)Lcom/huawei/android/FMRadio/ValuePicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/huawei/android/FMRadio/ValuePicker;->setValue(I)V

    .line 94
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$2;->this$0:Lcom/huawei/android/FMRadio/FrequencyPicker;

    #calls: Lcom/huawei/android/FMRadio/FrequencyPicker;->refreshDecimalSpinner(I)V
    invoke-static {v3, v2}, Lcom/huawei/android/FMRadio/FrequencyPicker;->access$000(Lcom/huawei/android/FMRadio/FrequencyPicker;I)V

    .line 96
    :cond_1
    return-void

    .line 88
    :cond_2
    if-ne p2, v1, :cond_0

    if-ne p3, v0, :cond_0

    .line 89
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FrequencyPicker$2;->this$0:Lcom/huawei/android/FMRadio/FrequencyPicker;

    #getter for: Lcom/huawei/android/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/huawei/android/FMRadio/ValuePicker;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FrequencyPicker;->access$200(Lcom/huawei/android/FMRadio/FrequencyPicker;)Lcom/huawei/android/FMRadio/ValuePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/FMRadio/ValuePicker;->getValue()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_0
.end method
