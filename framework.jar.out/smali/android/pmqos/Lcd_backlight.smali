.class public Landroid/pmqos/Lcd_backlight;
.super Landroid/pmqos/Pmqos;
.source "Lcd_backlight.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "Lcd_backlight"


# instance fields
.field private fd:I

.field private org_value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Landroid/pmqos/Lcd_backlight;->org_value:I

    .line 22
    const-string v0, "/sys/class/leds/lcd_backlight0/brightness"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open_path(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Lcd_backlight;->fd:I

    .line 23
    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 3

    .prologue
    .line 44
    iget v0, p0, Landroid/pmqos/Lcd_backlight;->org_value:I

    iget v1, p0, Landroid/pmqos/Lcd_backlight;->fd:I

    invoke-static {v0, v1}, Landroid/pmqos/Pmqos;->pm_qos_write_dec(II)I

    .line 47
    const-string v0, "Lcd_backlight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLOSE to write value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/pmqos/Lcd_backlight;->org_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget v0, p0, Landroid/pmqos/Lcd_backlight;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Landroid/pmqos/Lcd_backlight;->org_value:I

    .line 51
    return-void
.end method

.method public pm_qos_read()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Landroid/pmqos/Lcd_backlight;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_read(I)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Lcd_backlight;->org_value:I

    .line 28
    iget v0, p0, Landroid/pmqos/Lcd_backlight;->org_value:I

    return v0
.end method

.method public pm_qos_write(I)V
    .locals 8
    .parameter "buffer"

    .prologue
    const-wide/high16 v6, 0x4059

    .line 34
    iget v2, p0, Landroid/pmqos/Lcd_backlight;->org_value:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 35
    iget v2, p0, Landroid/pmqos/Lcd_backlight;->fd:I

    invoke-static {v2}, Landroid/pmqos/Pmqos;->pm_qos_read(I)I

    move-result v2

    iput v2, p0, Landroid/pmqos/Lcd_backlight;->org_value:I

    .line 36
    :cond_0
    iget v2, p0, Landroid/pmqos/Lcd_backlight;->org_value:I

    int-to-double v0, v2

    .line 37
    .local v0, tmp:D
    const-string v2, "Lcd_backlight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-double v4, p1

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    int-to-double v2, p1

    div-double/2addr v2, v6

    mul-double/2addr v0, v2

    .line 39
    const-string v2, "Lcd_backlight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "want to write value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    double-to-int v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    double-to-int v2, v0

    iget v3, p0, Landroid/pmqos/Lcd_backlight;->fd:I

    invoke-static {v2, v3}, Landroid/pmqos/Pmqos;->pm_qos_write_dec(II)I

    .line 42
    return-void
.end method
