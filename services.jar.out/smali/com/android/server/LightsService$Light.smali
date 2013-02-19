.class public final Lcom/android/server/LightsService$Light;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Light"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$Light$PrintLEDStackException;
    }
.end annotation


# instance fields
.field private mBrightness:I

.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private mPowerSavingSelect:Z

.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;I)V
    .locals 1
    .parameter
    .parameter "id"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService$Light;->mPowerSavingSelect:Z

    .line 101
    iput p2, p0, Lcom/android/server/LightsService$Light;->mId:I

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/LightsService$Light;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/LightsService$Light;->stopFlashing()V

    return-void
.end method

.method private getAutoAdjustBright(I)I
    .locals 1
    .parameter "bright"

    .prologue
    .line 223
    const/16 v0, 0x23

    if-ge p1, v0, :cond_1

    .line 233
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 226
    .restart local p1
    :cond_1
    const/16 v0, 0x6e

    if-ge p1, v0, :cond_2

    .line 227
    add-int/lit8 v0, p1, -0x23

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0xa

    sub-int/2addr p1, v0

    goto :goto_0

    .line 229
    :cond_2
    const/16 v0, 0xb9

    if-ge p1, v0, :cond_0

    .line 230
    rsub-int v0, p1, 0xb9

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0xa

    sub-int/2addr p1, v0

    goto :goto_0
.end method

.method private getPowerSavingBright(I)I
    .locals 2
    .parameter "bright"

    .prologue
    const/4 v1, 0x1

    .line 239
    invoke-static {}, Lcom/android/server/LightsService;->access$600()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/LightsService$Light;->mPowerSavingSelect:Z

    if-ne v0, v1, :cond_0

    .line 240
    const/16 v0, 0x23

    if-ge p1, v0, :cond_1

    .line 254
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 243
    .restart local p1
    :cond_1
    const/16 v0, 0x6e

    if-ge p1, v0, :cond_2

    .line 244
    add-int/lit8 v0, p1, -0x23

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0xa

    sub-int/2addr p1, v0

    goto :goto_0

    .line 246
    :cond_2
    const/16 v0, 0xb9

    if-ge p1, v0, :cond_0

    .line 247
    rsub-int v0, p1, 0xb9

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0xa

    sub-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRatioBright(I)I
    .locals 6
    .parameter "bright"

    .prologue
    const/16 v5, 0x23

    .line 208
    if-ge p1, v5, :cond_0

    move v0, p1

    .line 216
    .end local p1
    .local v0, bright:I
    :goto_0
    return v0

    .line 210
    .end local v0           #bright:I
    .restart local p1
    :cond_0
    const/16 v1, 0xb9

    if-ge p1, v1, :cond_2

    .line 211
    int-to-double v1, p1

    invoke-static {}, Lcom/android/server/LightsService;->access$300()D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int p1, v1

    .line 212
    if-ge p1, v5, :cond_1

    .line 213
    const/16 p1, 0x23

    :cond_1
    move v0, p1

    .line 214
    .end local p1
    .restart local v0       #bright:I
    goto :goto_0

    .end local v0           #bright:I
    .restart local p1
    :cond_2
    move v0, p1

    .line 216
    .end local p1
    .restart local v0       #bright:I
    goto :goto_0
.end method

.method private setLightLocked(IIIII)V
    .locals 9
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"
    .parameter "brightnessMode"

    .prologue
    .line 280
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMITest_Led, mId is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LightsService$Light;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-ne v0, v1, :cond_1

    .line 282
    :cond_0
    const-string v0, "LightsService"

    const-string v1, "MMITest_Led, throw mmiLedPrintException"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :try_start_0
    new-instance v8, Lcom/android/server/LightsService$Light$PrintLEDStackException;

    const-string v0, "mmiLedPrintException"

    invoke-direct {v8, p0, v0}, Lcom/android/server/LightsService$Light$PrintLEDStackException;-><init>(Lcom/android/server/LightsService$Light;Ljava/lang/String;)V

    .line 285
    .local v8, mmiLedPrintException:Lcom/android/server/LightsService$Light$PrintLEDStackException;
    throw v8
    :try_end_0
    .catch Lcom/android/server/LightsService$Light$PrintLEDStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v8           #mmiLedPrintException:Lcom/android/server/LightsService$Light$PrintLEDStackException;
    :catch_0
    move-exception v7

    .line 287
    .local v7, e:Lcom/android/server/LightsService$Light$PrintLEDStackException;
    invoke-virtual {v7}, Lcom/android/server/LightsService$Light$PrintLEDStackException;->printStackTrace()V

    .line 291
    .end local v7           #e:Lcom/android/server/LightsService$Light$PrintLEDStackException;
    :cond_1
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/LightsService$Light;->mMode:I

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    if-ne p3, v0, :cond_2

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    if-eq p4, v0, :cond_3

    .line 294
    :cond_2
    iput p1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    .line 295
    iput p2, p0, Lcom/android/server/LightsService$Light;->mMode:I

    .line 296
    iput p3, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    .line 297
    iput p4, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    .line 298
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$000(Lcom/android/server/LightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$100(IIIIIII)V

    .line 300
    :cond_3
    return-void
.end method

.method private stopFlashing()V
    .locals 6

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget v1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 266
    monitor-exit p0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .prologue
    .line 180
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/LightsService$Light;->pulse(II)V

    .line 181
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .parameter "color"
    .parameter "onMS"

    .prologue
    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/LightsService$Light;->mFlashing:Z

    if-nez v0, :cond_0

    .line 186
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 187
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 189
    :cond_0
    monitor-exit p0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendSmartBackLight(I)V
    .locals 7
    .parameter "value"

    .prologue
    .line 115
    monitor-enter p0

    .line 117
    const/high16 v0, 0xe

    and-int/2addr v0, p1

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v1, p1

    or-int v2, v0, v1

    .line 122
    .local v2, lightValue:I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$000(Lcom/android/server/LightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$100(IIIIIII)V

    .line 123
    monitor-exit p0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 129
    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .parameter "brightness"
    .parameter "brightnessMode"

    .prologue
    .line 133
    iput p1, p0, Lcom/android/server/LightsService$Light;->mBrightness:I

    .line 136
    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-nez v0, :cond_1

    .line 137
    invoke-static {p1}, Lcom/android/server/LightsService;->access$202(I)I

    .line 139
    invoke-static {}, Lcom/android/server/LightsService;->access$300()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/LightsService$Light;->getRatioBright(I)I

    move-result p1

    .line 141
    const-string v0, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRatioBright:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-static {}, Lcom/android/server/LightsService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/LightsService$Light;->getAutoAdjustBright(I)I

    move-result p1

    .line 146
    const-string v0, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAutoAdjustBright:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1
    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-nez v0, :cond_2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/LightsService$Light;->getPowerSavingBright(I)I

    move-result p1

    .line 159
    :cond_2
    monitor-enter p0

    .line 160
    and-int/lit16 v1, p1, 0xff

    .line 161
    .local v1, color:I
    const/high16 v0, -0x100

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 162
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 163
    monitor-exit p0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .parameter "color"

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 169
    monitor-exit p0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"

    .prologue
    .line 173
    monitor-enter p0

    .line 174
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 175
    monitor-exit p0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPowerSaving(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/server/LightsService$Light;->mPowerSavingSelect:Z

    .line 204
    return-void
.end method

.method public setSBLEnable(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 106
    monitor-enter p0

    .line 107
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 109
    .local v2, sblEnable:I
    :cond_0
    shl-int/lit8 v2, v2, 0x10

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$000(Lcom/android/server/LightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$100(IIIIIII)V

    .line 111
    monitor-exit p0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSceneBacklightSwitcher(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 261
    return-void
.end method

.method public turnOff()V
    .locals 6

    .prologue
    .line 193
    monitor-enter p0

    .line 194
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 195
    monitor-exit p0

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
