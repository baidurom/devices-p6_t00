.class public Lcom/huawei/android/hwpowermanager/util/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# static fields
.field private static CHARGING_VALUE_PATH:Ljava/lang/String;

.field private static FILEPATHCAPACITY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "/sys/class/power_supply/Battery/capacity_fcc"

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/BatteryInfo;->FILEPATHCAPACITY:Ljava/lang/String;

    .line 14
    const-string v0, "/sys/class/power_supply/Battery/current_now"

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/BatteryInfo;->CHARGING_VALUE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryCapacity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    sget-object v1, Lcom/huawei/android/hwpowermanager/util/BatteryInfo;->FILEPATHCAPACITY:Ljava/lang/String;

    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/util/BatteryInfo;->readFileByChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, batteryCapacity:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const-string v0, "2000"

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentChargingValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    sget-object v1, Lcom/huawei/android/hwpowermanager/util/BatteryInfo;->CHARGING_VALUE_PATH:Ljava/lang/String;

    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/util/BatteryInfo;->readFileByChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, charging_value:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    const-string v0, "-1"

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readFileByChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "fileName"

    .prologue
    .line 33
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_1

    .line 35
    :cond_0
    const-string v6, ""

    .line 55
    :goto_0
    return-object v6

    .line 37
    :cond_1
    const/4 v3, 0x0

    .line 38
    .local v3, reader:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v5, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 41
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 42
    .local v0, data:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 45
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 46
    .end local v0           #data:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v1, e1:Ljava/io/IOException;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    if-eqz v3, :cond_2

    .line 50
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 55
    .end local v1           #e1:Ljava/io/IOException;
    :cond_2
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 48
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v0       #data:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_3
    if-eqz v4, :cond_5

    .line 50
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 52
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 51
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    move-object v3, v4

    .line 52
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 48
    .end local v0           #data:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_4

    .line 50
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 52
    :cond_4
    :goto_5
    throw v6

    .line 51
    .restart local v1       #e1:Ljava/io/IOException;
    :catch_2
    move-exception v6

    goto :goto_3

    .end local v1           #e1:Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_5

    .line 48
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v0       #data:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 45
    .end local v0           #data:Ljava/lang/String;
    :catch_4
    move-exception v1

    goto :goto_2

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v0       #data:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_5
    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_3
.end method
