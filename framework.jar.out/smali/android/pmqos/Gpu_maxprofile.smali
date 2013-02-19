.class public Landroid/pmqos/Gpu_maxprofile;
.super Landroid/pmqos/Pmqos;
.source "Gpu_maxprofile.java"


# instance fields
.field private fd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 9
    const-string v0, "gpu_maxprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Gpu_maxprofile;->fd:I

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 13
    invoke-static {p1}, Landroid/pmqos/Pmqos;->pm_qos_open_path(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Gpu_maxprofile;->fd:I

    .line 14
    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Landroid/pmqos/Gpu_maxprofile;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    .line 27
    return-void
.end method

.method public pm_qos_read()V
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Landroid/pmqos/Gpu_maxprofile;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_read(I)I

    .line 21
    return-void
.end method

.method public pm_qos_write(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 23
    iget v0, p0, Landroid/pmqos/Gpu_maxprofile;->fd:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    .line 24
    return-void
.end method

.method public pm_qos_write_dec(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 16
    iget v0, p0, Landroid/pmqos/Gpu_maxprofile;->fd:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write_dec(II)I

    .line 17
    return-void
.end method
