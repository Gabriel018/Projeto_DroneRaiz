/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Principal;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JDesktopPane;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.table.DefaultTableModel;




public class ConsultarCliente extends javax.swing.JInternalFrame {

    /**
     * Creates new form ConsultarCliente
     */
    private JPanel jdPrincipal;
    public ConsultarCliente(JPanel jdp) {
        initComponents();
        jdPrincipal = jdp;
    }

    
     
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel2 = new javax.swing.JLabel();
        txtNome = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        btNovo = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        btExcluir = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jtCliente = new javax.swing.JTable();

        setBorder(new javax.swing.border.MatteBorder(null));
        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("Consultar Cliente");
        setMaximumSize(new java.awt.Dimension(600, 600));
        setVisible(true);

        jLabel2.setText("Nome:");

        txtNome.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtNomeActionPerformed(evt);
            }
        });

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jButton1.setText("Pesquisar");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        btNovo.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        btNovo.setText("Cadastrar");
        btNovo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btNovoActionPerformed(evt);
            }
        });

        jButton3.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jButton3.setText("Alterar");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        btExcluir.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        btExcluir.setText("Excluir");
        btExcluir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btExcluirActionPerformed(evt);
            }
        });

        jButton5.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jButton5.setText("Cancelar");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jtCliente.setBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(0, 0, 0)));
        jtCliente.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "Nome", "DDD", "Telefone", "Email", "CPF", "RG", "Dt. Nascimento"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jtCliente.setMinimumSize(new java.awt.Dimension(220, 0));
        jtCliente.setName(""); // NOI18N
        jScrollPane1.setViewportView(jtCliente);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jButton1)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(btNovo)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jButton3)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(btExcluir)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jButton5))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel2)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtNome, javax.swing.GroupLayout.PREFERRED_SIZE, 501, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(0, 55, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtNome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton1)
                    .addComponent(btNovo, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButton3)
                    .addComponent(btExcluir)
                    .addComponent(jButton5))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 223, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        setBounds(0, 0, 613, 334);
    }// </editor-fold>//GEN-END:initComponents

    private void txtNomeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtNomeActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtNomeActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
     dispose();
    }//GEN-LAST:event_jButton5ActionPerformed

    private void btNovoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btNovoActionPerformed
        // TODO add your handling code here:
        CadastrarCliente cadastrarCliente= new CadastrarCliente();
        jdPrincipal.add(cadastrarCliente);
        cadastrarCliente.setVisible(true);
        dispose();
    }//GEN-LAST:event_btNovoActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_drz","root","");
            String sql = "select * from cliente ";
            if(!txtNome.getText().equals(""))
                sql = sql + " where Nome LIKE ? ";
            PreparedStatement stmt = con.prepareStatement(sql);
            if(!txtNome.getText().equals(""))
                stmt.setString(1, "%"+txtNome.getText()+"%");
            ResultSet rs = stmt.executeQuery();
            DefaultTableModel model = (DefaultTableModel) jtCliente.getModel();
            model.setNumRows(0);
            while(rs.next()){
                String[] linha = {rs.getString("IDCliente"), rs.getString("Nome"),
                    rs.getString("DDD"),rs.getString("Telefone"),rs.getString("Email"),
                    rs.getString("CPF"),rs.getString("RG"), rs.getString("DtNascimento") };
                model.addRow(linha);
            }
            
            stmt.close();
            con.close();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, e);
        }
            
    }//GEN-LAST:event_jButton1ActionPerformed

    private void btExcluirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btExcluirActionPerformed
        // TODO add your handling code here:
        try{
            Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/"
                    + "bd_drz","root","");  
            String sql = "delete from cliente where IDCliente = ?";
            PreparedStatement stmt = con.prepareStatement(sql);
            int linha = this.jtCliente.getSelectedRow();
            stmt.setInt(1, Integer.parseInt(jtCliente.getValueAt(linha, 0).toString()));
            stmt.execute();
            stmt.close();
            con.close();
            DefaultTableModel model = (DefaultTableModel) jtCliente.getModel();
            model.removeRow(linha);
            JOptionPane.showMessageDialog(this, "Cliente Excluído com Sucesso!");
            this.setClosable(true);
        }catch(SQLException e){
            JOptionPane.showMessageDialog(this, e);
        }
    }//GEN-LAST:event_btExcluirActionPerformed

    
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        
        dispose();
    }//GEN-LAST:event_jButton3ActionPerformed

    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btExcluir;
    private javax.swing.JButton btNovo;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton5;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jtCliente;
    private javax.swing.JTextField txtNome;
    // End of variables declaration//GEN-END:variables
}
