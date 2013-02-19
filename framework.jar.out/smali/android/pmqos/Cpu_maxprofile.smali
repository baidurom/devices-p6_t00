.class public Landroid/pmqos/Cpu_maxprofile;
.super Landroid/pmqos/Pmqos;
.source "Cpu_maxprofile.java"


# instance fields
.field private fd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 8
    const-string v0, "cpu_maxprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Cpu_maxprofile;->fd:I

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 12
    invoke-static {p1}, Landroid/pmqos/Pmqos;->pm_qos_open_path(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Cpu_maxprofile;->fd:I

    .line 13
    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Landroid/pmqos/Cpu_maxprofile;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    .line 26
    return-void
.end method

.method public pm_qos_read()V
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Landroid/pmqos/Cpu_maxprofile;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_read(I)I

    .line 20
    return-void
.end method

.method public pm_qos_write(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 22
    iget v0, p0, Landroid/pmqos/Cpu_maxprofile;->fd:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    .line 23
    return-void
.end method

.method public pm_qos_write_dec(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 15
    iget v0, p0, Landroid/pmqos/Cpu_maxprofile;->fd:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write_dec(II)I

    .line 16
    return-void
.end method
