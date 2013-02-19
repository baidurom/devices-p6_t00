.class public Landroid/util/CommandLineUtil;
.super Ljava/lang/Object;
.source "CommandLineUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addQuoteMark(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "param"

    .prologue
    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    :cond_0
    return-object p0
.end method

.method public static chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "rule"
    .parameter "chrule"
    .parameter "path"

    .prologue
    .line 32
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 33
    .local v0, obj:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 34
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 35
    const-string v1, "chmod -R %s %s"

    invoke-static {p0, v1, v0}, Landroid/util/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static chown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "rule"
    .parameter "owner"
    .parameter "group"
    .parameter "path"

    .prologue
    .line 48
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    .line 49
    .local v0, obj:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 50
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 51
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 52
    const-string v1, "chown %s.%s %s"

    invoke-static {p0, v1, v0}, Landroid/util/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static mkdir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "rule"
    .parameter "path"

    .prologue
    .line 63
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 64
    .local v0, obj:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 65
    const-string/jumbo v1, "mkdir -p %s"

    invoke-static {p0, v1, v0}, Landroid/util/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "rule"
    .parameter "opath"
    .parameter "npath"

    .prologue
    .line 77
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 78
    .local v0, obj:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 79
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 80
    const-string/jumbo v1, "mv %s %s"

    invoke-static {p0, v1, v0}, Landroid/util/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static rm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "rule"
    .parameter "path"

    .prologue
    .line 91
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 92
    .local v0, obj:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 93
    const-string/jumbo v1, "rm -r %s"

    invoke-static {p0, v1, v0}, Landroid/util/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static run(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 6
    .parameter "bool"
    .parameter "rule"
    .parameter "cmd1"
    .parameter "cmd2"

    .prologue
    const/4 v0, 0x0

    .line 135
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    .line 136
    .local v2, str2:[Ljava/lang/String;
    array-length v4, p3

    if-lez v4, :cond_0

    .line 137
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, str1:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    .end local v1           #str1:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 141
    .restart local v1       #str1:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    const-string v5, "/system/bin/sh"

    aput-object v5, v2, v4

    .line 142
    const-string v3, "-c"

    .line 143
    .local v3, str3:Ljava/lang/String;
    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 144
    const/4 v4, 0x2

    aput-object v1, v2, v4

    .line 145
    invoke-static {p0, v2}, Landroid/util/CommandLineUtil;->runInner(Z[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 146
    .local v0, inputStream:Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .parameter "role"
    .parameter "cmd1"
    .parameter "cmd2"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, bool:Z
    invoke-static {v0, p0, p1, p2}, Landroid/util/CommandLineUtil;->run(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 109
    :cond_0
    return v0
.end method

.method private static runInner(Z[Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "bool"
    .parameter "cmd"

    .prologue
    .line 160
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 161
    .local v2, process:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 162
    .local v1, inputStream:Ljava/io/InputStream;
    if-nez p0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const/4 v1, 0x0

    .line 170
    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v2           #process:Ljava/lang/Process;
    :cond_0
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sync(Ljava/lang/String;)Z
    .locals 3
    .parameter "rule"

    .prologue
    .line 119
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 120
    .local v0, obj:[Ljava/lang/Object;
    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 121
    const-string/jumbo v1, "sync %s"

    invoke-static {p0, v1, v0}, Landroid/util/CommandLineUtil;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
