.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PbrFile"
.end annotation


# instance fields
.field mFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field public tlvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v6, 0x0

    .line 2381
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2382
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    .line 2385
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->tlvList:Ljava/util/ArrayList;

    .line 2389
    const/4 v1, 0x0

    .line 2392
    .local v1, recNum:I
    #setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrNum:I
    invoke-static {p1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I

    .line 2395
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 2398
    .local v3, record:[B
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before making TLVs, data is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {p1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 2403
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ffff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2411
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v4, v3

    invoke-direct {v2, v3, v6, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2415
    .local v2, recTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2418
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parsePBRData([B)V

    .line 2423
    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 2424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2426
    .end local v2           #recTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v3           #record:[B
    :cond_3
    return-void
.end method


# virtual methods
.method addRecord(Lcom/android/internal/telephony/gsm/SimTlv;)V
    .locals 2
    .parameter "tlv"

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const-string v1, "addRecord "

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 2654
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2655
    return-void
.end method

.method public getFileId(II)Ljava/util/ArrayList;
    .locals 8
    .parameter "recordNum"
    .parameter "fileTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2659
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2663
    .local v2, ints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->tlvList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/2addr v6, p1

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SimTlv;

    .line 2664
    .local v3, recordTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    array-length v7, v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2666
    .local v4, subTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2668
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 2671
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    shl-int/lit8 v1, v5, 0x8

    .line 2672
    .local v1, i:I
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2675
    .end local v1           #i:I
    .end local v3           #recordTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v4           #subTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :catch_0
    move-exception v0

    .line 2677
    .local v0, ex:Ljava/lang/IndexOutOfBoundsException;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IndexOutOfBoundsException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 2680
    .end local v0           #ex:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    return-object v2
.end method

.method public getFileIdsByTagAdn(II)Ljava/util/ArrayList;
    .locals 13
    .parameter "tag"
    .parameter "ADNid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2685
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const-string v9, "enter getFileIdsByTagAdn."

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 2686
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2687
    .local v2, ints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 2689
    .local v0, adnBegin:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, size:I
    :goto_0
    if-ge v1, v4, :cond_5

    .line 2691
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SimTlv;

    .line 2692
    .local v3, recordTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    new-instance v5, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v9

    array-length v9, v9

    invoke-direct {v5, v8, v10, v9}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2695
    .local v5, subTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    array-length v8, v8

    if-gt v8, v12, :cond_2

    .line 2726
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2700
    :cond_2
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    aget-byte v8, v8, v10

    shl-int/lit8 v6, v8, 0x8

    .line 2701
    .local v6, x:I
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    aget-byte v8, v8, v11

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 2703
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v8

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_3

    .line 2705
    if-ne v6, p2, :cond_4

    .line 2707
    const/4 v0, 0x1

    .line 2714
    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    .line 2716
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v8

    if-ne v8, p1, :cond_1

    .line 2718
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    array-length v8, v8

    if-lt v8, v12, :cond_1

    .line 2722
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    aget-byte v8, v8, v10

    shl-int/lit8 v7, v8, 0x8

    .line 2723
    .local v7, y:I
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    aget-byte v8, v8, v11

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2710
    .end local v7           #y:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 2728
    .end local v3           #recordTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v5           #subTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v6           #x:I
    :cond_5
    return-object v2
.end method

.method getValidData([B)I
    .locals 3
    .parameter "data"

    .prologue
    .line 2643
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2645
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    .line 2649
    .end local v0           #i:I
    :goto_1
    return v0

    .line 2643
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2649
    :cond_1
    array-length v0, p1

    goto :goto_1
.end method

.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V
    .locals 7
    .parameter "tlv"
    .parameter
    .parameter "parentTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    .line 2518
    const/4 v3, 0x0

    .line 2520
    .local v3, tagNumberWithinParentTag:I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    .line 2521
    .local v2, tag:I
    const/16 v4, 0xa9

    if-ne p3, v4, :cond_1

    const/16 v4, 0xca

    if-ne v2, v4, :cond_1

    .line 2522
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z
    invoke-static {v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$502(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z

    .line 2523
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I
    invoke-static {v4, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$602(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I

    .line 2525
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 2543
    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 2544
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2545
    return-void

    .line 2538
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 2539
    .local v0, data:[B
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, v0, v6

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 2540
    .local v1, efid:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2525
    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "tlv"
    .parameter
    .parameter "parentTag"
    .parameter "emailInfo"
    .parameter "anrInfo"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2552
    .local p2, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p6, emailEFS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p7, anrEFS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 2554
    .local v3, tagNumberWithinParentTag:I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    .line 2556
    .local v2, tag:I
    packed-switch v2, :pswitch_data_0

    .line 2620
    :cond_1
    :goto_0
    const/16 v4, 0xc4

    if-eq v2, v4, :cond_2

    .line 2622
    add-int/lit8 v3, v3, 0x1

    .line 2625
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2626
    return-void

    .line 2569
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 2570
    .local v0, data:[B
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 2574
    .local v1, efid:I
    const/16 v4, 0xa9

    if-ne p3, v4, :cond_3

    const/16 v4, 0xca

    if-ne v2, v4, :cond_3

    .line 2576
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v5, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$502(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z

    .line 2577
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I
    invoke-static {v4, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$602(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I

    .line 2580
    :cond_3
    const/16 v4, 0xca

    if-ne v2, v4, :cond_5

    .line 2582
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseEf email TAG  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "tagNumberWithinParentTag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    const/16 v4, 0xa9

    if-ne p3, v4, :cond_4

    .line 2585
    iget-object v4, p4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2587
    :cond_4
    iput p3, p4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    .line 2588
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2592
    :cond_5
    const/16 v4, 0xc4

    if-ne v2, v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-boolean v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->notAnrInPbrItem:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 2594
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$008(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)I

    .line 2596
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseEf   ANR  TAG  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "tagNumberWithinParentTag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 2598
    const/16 v4, 0xa9

    if-ne p3, v4, :cond_6

    .line 2600
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v5, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$702(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z

    .line 2601
    iget-object v4, p5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2604
    :cond_6
    iput p3, p5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    .line 2605
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2607
    add-int/lit8 v3, v3, 0x1

    .line 2608
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->notAnrInPbrItem:Z

    .line 2612
    :cond_7
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseTag tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " efid   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    const/16 v4, 0xc4

    if-eq v2, v4, :cond_1

    .line 2616
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2556
    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parsePBRData([B)V
    .locals 4
    .parameter "data"

    .prologue
    .line 2631
    const/4 v1, 0x0

    .line 2632
    .local v1, totalLength:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->getValidData([B)I

    move-result v2

    .line 2636
    .local v2, validLength:I
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2637
    .local v0, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 2638
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->addRecord(Lcom/android/internal/telephony/gsm/SimTlv;)V

    .line 2639
    if-lt v1, v2, :cond_0

    .line 2640
    return-void
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 14
    .parameter "tlv"
    .parameter "recNum"

    .prologue
    .line 2432
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2435
    .local v2, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2436
    .local v6, emailEfs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2437
    .local v7, anrEfs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2438
    .local v10, emailType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2439
    .local v8, anrType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .line 2440
    .local v11, i:I
    new-instance v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .line 2441
    .local v4, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    .line 2442
    new-instance v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .line 2443
    .local v5, anrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    .line 2444
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->notAnrInPbrItem:Z

    .line 2447
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v3

    .line 2448
    .local v3, tag:I
    packed-switch v3, :pswitch_data_0

    .line 2468
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2472
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2475
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2477
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    .line 2478
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseTag email ef "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 2480
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 2482
    iget-object v12, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v12, v11

    .line 2480
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2452
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v9

    .line 2453
    .local v9, data:[B
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v0, 0x0

    array-length v12, v9

    invoke-direct {v1, v9, v0, v12}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2457
    .local v1, tlvEf:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2459
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 2461
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2486
    .end local v1           #tlvEf:Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v9           #data:[B
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2488
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    .line 2489
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseTag anr ef "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 2491
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_3

    .line 2493
    iget-object v12, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v12, v11

    .line 2491
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2497
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2499
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$300(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2501
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$300(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2504
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2506
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2512
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2513
    return-void

    .line 2448
    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
